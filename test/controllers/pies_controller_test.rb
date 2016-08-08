require 'test_helper'

class PiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pies_index_url
    assert_response :success
  end

  test "should get create" do
    get pies_create_url
    assert_response :success
  end

  test "should get pie_params" do
    get pies_pie_params_url
    assert_response :success
  end

end
