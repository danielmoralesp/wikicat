require 'test_helper'

class Api::V1::CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get :show, {'category' => 'science'}
    assert_response :success
    assert_equal "{\"category\":{\"title\":\"science\",\"sub_categories\":1}}", @response.body
  end

end
