require 'test_helper'

class UserTest < ActiveSupport::TestCase
  describe User do
    it 'should have an access token' do
      user = User.new(email: 'test@email.com', password: 'password')

      assert_nil user.access_token

      user.save

      refute_nil user.access_token, 'User created with no access_token'
    end
  end
end
