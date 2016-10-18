module V1
  class SessionsController < ApplicationController
    skip_before_action :authenticate_user_from_token!

    # POST /v1/login
    def create
      @user = User.find_for_database_authentication(email: params[:email])
      return invalid_login_attempt unless @user
      return invalid_login_attempt unless @user.valid_password?(params[:password])

      sign_in(:user, @user)

      render(
        json: @user,
        serializer: SessionSerializer,
        root: 'data'
      )
    end

    private

    def invalid_login_attempt
      warden.custom_failure!
      render(
        json: { 'error': 'Invalid Auth attemp. Access denied.' },
        status: :unprocessable_entity
      )
    end
  end
end
