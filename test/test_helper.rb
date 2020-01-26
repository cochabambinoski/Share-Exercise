ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class UserTest < ActiveSupport::TestCase
  fixtures :all
  include ApplicationHelper

  setup do
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  test "should be valid" do
    assert @user.valid?
  end
  
end


