require 'test_helper'

class DaleytasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daleytask = daleytasks(:one)
  end

  test "should get index" do
    get daleytasks_url
    assert_response :success
  end

  test "should get new" do
    get new_daleytask_url
    assert_response :success
  end

  test "should create daleytask" do
    assert_difference('Daleytask.count') do
      post daleytasks_url, params: { daleytask: { what: @daleytask.what, when: @daleytask.when, who: @daleytask.who } }
    end

    assert_redirected_to daleytask_url(Daleytask.last)
  end

  test "should show daleytask" do
    get daleytask_url(@daleytask)
    assert_response :success
  end

  test "should get edit" do
    get edit_daleytask_url(@daleytask)
    assert_response :success
  end

  test "should update daleytask" do
    patch daleytask_url(@daleytask), params: { daleytask: { what: @daleytask.what, when: @daleytask.when, who: @daleytask.who } }
    assert_redirected_to daleytask_url(@daleytask)
  end

  test "should destroy daleytask" do
    assert_difference('Daleytask.count', -1) do
      delete daleytask_url(@daleytask)
    end

    assert_redirected_to daleytasks_url
  end
end
