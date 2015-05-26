require 'test_helper'

class MadlibsControllerTest < ActionController::TestCase
  setup do
    @madlib = madlibs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:madlibs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create madlib" do
    assert_difference('Madlib.count') do
      post :create, madlib: {  }
    end

    assert_redirected_to madlib_path(assigns(:madlib))
  end

  test "should show madlib" do
    get :show, id: @madlib
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @madlib
    assert_response :success
  end

  test "should update madlib" do
    patch :update, id: @madlib, madlib: {  }
    assert_redirected_to madlib_path(assigns(:madlib))
  end

  test "should destroy madlib" do
    assert_difference('Madlib.count', -1) do
      delete :destroy, id: @madlib
    end

    assert_redirected_to madlibs_path
  end
end
