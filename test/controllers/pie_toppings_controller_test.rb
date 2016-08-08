require 'test_helper'

class PieToppingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pie_toppings_index_url
    assert_response :success
  end

  test "should get create" do
    get pie_toppings_create_url
    assert_response :success
  end

  test "should get pie_params" do
    get pie_toppings_pie_params_url
    assert_response :success
  end

end
