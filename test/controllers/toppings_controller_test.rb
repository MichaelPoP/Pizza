require 'test_helper'

class ToppingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toppings_index_url
    assert_response :success
  end

  test "should get create" do
    get toppings_create_url
    assert_response :success
  end

  test "should get topping_params" do
    get toppings_topping_params_url
    assert_response :success
  end

end
