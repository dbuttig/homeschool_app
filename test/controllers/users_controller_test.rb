require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should post create and redirect to welcome" do
    post users_url, params: {user: {username: 'a', password: 'b'}}
    assert_redirected_to welcome_url
  end

  test "post should create a user and an account" do
    post users_url, params: {user: {username: 'a', password: 'b'}}
    assert_equal User.count, 1
    assert_equal Admin::Account.count, 1
  end
end
