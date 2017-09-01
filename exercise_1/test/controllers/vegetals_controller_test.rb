require 'test_helper'

class VegetalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vegetal = vegetals(:one)
  end

  test "should get index" do
    get vegetals_url
    assert_response :success
  end

  test "should get new" do
    get new_vegetal_url
    assert_response :success
  end

  test "should create vegetal" do
    assert_difference('Vegetal.count') do
      post vegetals_url, params: { vegetal: { color: @vegetal.color, name: @vegetal.name, price: @vegetal.price, weight: @vegetal.weight } }
    end

    assert_redirected_to vegetal_url(Vegetal.last)
  end

  test "should show vegetal" do
    get vegetal_url(@vegetal)
    assert_response :success
  end

  test "should get edit" do
    get edit_vegetal_url(@vegetal)
    assert_response :success
  end

  test "should update vegetal" do
    patch vegetal_url(@vegetal), params: { vegetal: { color: @vegetal.color, name: @vegetal.name, price: @vegetal.price, weight: @vegetal.weight } }
    assert_redirected_to vegetal_url(@vegetal)
  end

  test "should destroy vegetal" do
    assert_difference('Vegetal.count', -1) do
      delete vegetal_url(@vegetal)
    end

    assert_redirected_to vegetals_url
  end
end
