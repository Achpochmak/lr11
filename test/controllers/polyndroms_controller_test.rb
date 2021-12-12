require "test_helper"

class PolyndromsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @polyndrom = polyndroms(:one)
  end

  test "should get index" do
    get polyndroms_url
    assert_response :success
  end

  test "should get new" do
    get new_polyndrom_url
    assert_response :success
  end

  test "should create polyndrom" do
    assert_difference('Polyndrom.count') do
      post polyndroms_url, params: { polyndrom: { index: @polyndrom.index, num: @polyndrom.num, rev: @polyndrom.rev, theory: @polyndrom.theory } }
    end

    assert_redirected_to polyndrom_url(Polyndrom.last)
  end

  test "should show polyndrom" do
    get polyndrom_url(@polyndrom)
    assert_response :success
  end

  test "should get edit" do
    get edit_polyndrom_url(@polyndrom)
    assert_response :success
  end

  test "should update polyndrom" do
    patch polyndrom_url(@polyndrom), params: { polyndrom: { index: @polyndrom.index, num: @polyndrom.num, rev: @polyndrom.rev, theory: @polyndrom.theory } }
    assert_redirected_to polyndrom_url(@polyndrom)
  end

  test "should destroy polyndrom" do
    assert_difference('Polyndrom.count', -1) do
      delete polyndrom_url(@polyndrom)
    end

    assert_redirected_to polyndroms_url
  end
end
