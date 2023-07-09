require "test_helper"

class TransactionControllerTest < ActionDispatch::IntegrationTest
  test "should get trx" do
    get transaction_trx_url
    assert_response :success
  end
end
