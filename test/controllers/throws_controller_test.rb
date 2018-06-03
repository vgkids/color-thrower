require 'test_helper'

class ThrowsControllerTest < ActionController::TestCase
  setup do
    @throw = throws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:throws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create throw" do
    assert_difference('Throw.count') do
      post :create, throw: { comment: @throw.comment, name: @throw.name }
    end

    assert_redirected_to throw_path(assigns(:throw))
  end

  test "should show throw" do
    get :show, id: @throw
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @throw
    assert_response :success
  end

  test "should update throw" do
    patch :update, id: @throw, throw: { comment: @throw.comment, name: @throw.name }
    assert_redirected_to throw_path(assigns(:throw))
  end

  test "should destroy throw" do
    assert_difference('Throw.count', -1) do
      delete :destroy, id: @throw
    end

    assert_redirected_to throws_path
  end
end
