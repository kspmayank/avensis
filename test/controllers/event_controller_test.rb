require 'test_helper'

class EventControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get updates" do
    get :updates
    assert_response :success
  end

  test "should get addupdates" do
    get :addupdates
    assert_response :success
  end

end
