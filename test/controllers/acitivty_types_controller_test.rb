require 'test_helper'

class AcitivtyTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acitivty_type = acitivty_types(:one)
  end

  test "should get index" do
    get acitivty_types_url
    assert_response :success
  end

  test "should get new" do
    get new_acitivty_type_url
    assert_response :success
  end

  test "should create acitivty_type" do
    assert_difference('AcitivtyType.count') do
      post acitivty_types_url, params: { acitivty_type: { emoji: @acitivty_type.emoji, measure: @acitivty_type.measure, name: @acitivty_type.name, time_conversion: @acitivty_type.time_conversion } }
    end

    assert_redirected_to acitivty_type_url(AcitivtyType.last)
  end

  test "should show acitivty_type" do
    get acitivty_type_url(@acitivty_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_acitivty_type_url(@acitivty_type)
    assert_response :success
  end

  test "should update acitivty_type" do
    patch acitivty_type_url(@acitivty_type), params: { acitivty_type: { emoji: @acitivty_type.emoji, measure: @acitivty_type.measure, name: @acitivty_type.name, time_conversion: @acitivty_type.time_conversion } }
    assert_redirected_to acitivty_type_url(@acitivty_type)
  end

  test "should destroy acitivty_type" do
    assert_difference('AcitivtyType.count', -1) do
      delete acitivty_type_url(@acitivty_type)
    end

    assert_redirected_to acitivty_types_url
  end
end
