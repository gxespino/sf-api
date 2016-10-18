class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :validatable

  after_create :update_access_token!

  validates :email, presence: true

  private

  def update_access_token!
    # Change this to use something other than User.id
    self.access_token = "#{self.id}:#{Devise.friendly_token}"
    save
  end
end
