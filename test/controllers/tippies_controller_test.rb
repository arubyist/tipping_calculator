require 'test_helper'

class TippiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tippy = tippies(:one)
  end

  test "should get index" do
    get tippies_url
    assert_response :success
  end

  test "should get new" do
    get new_tippy_url
    assert_response :success
  end

  test "should create tippy" do
    assert_difference('Tippy.count') do
      post tippies_url, params: { tippy: { cost: @tippy.cost, tip: @tippy.tip } }
    end

    assert_redirected_to tippy_url(Tippy.last)
  end

  test "should show tippy" do
    get tippy_url(@tippy)
    assert_response :success
  end

  test "should get edit" do
    get edit_tippy_url(@tippy)
    assert_response :success
  end

  test "should update tippy" do
    patch tippy_url(@tippy), params: { tippy: { cost: @tippy.cost, tip: @tippy.tip } }
    assert_redirected_to tippy_url(@tippy)
  end

  test "should destroy tippy" do
    assert_difference('Tippy.count', -1) do
      delete tippy_url(@tippy)
    end

    assert_redirected_to tippies_url
  end
end
