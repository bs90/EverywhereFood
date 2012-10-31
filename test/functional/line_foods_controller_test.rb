require 'test_helper'

class LineFoodsControllerTest < ActionController::TestCase
  setup do
    @line_food = line_foods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_foods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_food" do
    assert_difference('LineFood.count') do
      post :create, line_food: { cart_id: @line_food.cart_id, food_id: @line_food.food_id }
    end

    assert_redirected_to line_food_path(assigns(:line_food))
  end

  test "should show line_food" do
    get :show, id: @line_food
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_food
    assert_response :success
  end

  test "should update line_food" do
    put :update, id: @line_food, line_food: { cart_id: @line_food.cart_id, food_id: @line_food.food_id }
    assert_redirected_to line_food_path(assigns(:line_food))
  end

  test "should destroy line_food" do
    assert_difference('LineFood.count', -1) do
      delete :destroy, id: @line_food
    end

    assert_redirected_to line_foods_path
  end
end
