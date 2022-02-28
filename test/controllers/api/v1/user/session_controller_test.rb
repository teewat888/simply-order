require "test_helper"

class Api::V1::User::SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_in" do
    get api_v1_user_session_sign_in_url
    assert_response :success
  end

  test "should get sign_out" do
    get api_v1_user_session_sign_out_url
    assert_response :success
  end

  test "should get profile" do
    get api_v1_user_session_profile_url
    assert_response :success
  end
end
