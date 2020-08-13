require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    post login_path
    assert_response :success #FAIL
  end

  test "should get dashboard" do
    get dashboard_url
    assert_response :success #FAIL
  end

  test "should get login" do
    get login_url
    assert_response :success
  end

  test "should get welcome" do
    get welcome_url
    assert_response :success
  end

end
