require 'test_helper'

class PieControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pie_index_url
    assert_response :success
  end

  test "should get create" do
    get pie_create_url
    assert_response :success
  end

  test "should get pie_params" do
    get pie_pie_params_url
    assert_response :success
  end

end
