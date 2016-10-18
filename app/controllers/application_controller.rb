class ApplicationController < ActionController::API
  respond_to :json

  before_action :authenticate_user_from_token!

  def authenticate_user_from_token!
    if auth_token
      authenticate
    else
      authentication_error
    end
  end

  private

  def auth_token
    request.headers['Authorization']
  end

  def user_id
    auth_token.split(':').first
  end

  def user
    User.where(id: user_id).first
  end

  def authenticate
    return authentication_error unless auth_token.include?(':')

    if valid_auth(user)
      sign_in(user, store: false)
    else
      authentication_error
    end
  end

  def valid_auth(user)
    user && Devise.secure_compare(user.access_token, auth_token)
  end

  def authentication_error
    render(
      json: { 'error': 'Invalid Auth token. Access denied.' },
      status: 401
    )
  end
end
