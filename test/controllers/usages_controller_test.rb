require 'test_helper'

class UsagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usage = usages(:one)
  end

  test "should get index" do
    get usages_url
    assert_response :success
  end

  test "should get new" do
    get new_usage_url
    assert_response :success
  end

  test "should create usage" do
    assert_difference('Usage.count') do
      post usages_url, params: { usage: { amount_used: @usage.amount_used, appointment_id: @usage.appointment_id, supply_id: @usage.supply_id } }
    end

    assert_redirected_to usage_url(Usage.last)
  end

  test "should show usage" do
    get usage_url(@usage)
    assert_response :success
  end

  test "should get edit" do
    get edit_usage_url(@usage)
    assert_response :success
  end

  test "should update usage" do
    patch usage_url(@usage), params: { usage: { amount_used: @usage.amount_used, appointment_id: @usage.appointment_id, supply_id: @usage.supply_id } }
    assert_redirected_to usage_url(@usage)
  end

  test "should destroy usage" do
    assert_difference('Usage.count', -1) do
      delete usage_url(@usage)
    end

    assert_redirected_to usages_url
  end
end
