require "test_helper"

class ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get schedule_new_url
    assert_response :success
  end

  test "should get create" do
    get schedule_create_url
    assert_response :success
  end

  test "should get update" do
    get schedule_update_url
    assert_response :success
  end

  test "should get edit" do
    get schedule_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get schedule_destroy_url
    assert_response :success
  end

  test "should get show" do
    get schedule_show_url
    assert_response :success
  end

  test "should get index" do
    get schedule_index_url
    assert_response :success
  end
end
