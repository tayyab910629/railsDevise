require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get details" do
    get dashboard_details_url
    assert_response :success
  end
end
