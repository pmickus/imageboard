require 'test_helper'

class ThreadsControllerTest < ActionController::TestCase
  setup do
    @thread = threads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:threads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thread" do
    assert_difference('Threads.count') do
      post :create, thread: {  }
    end

    assert_redirected_to thread_path(assigns(:thread))
  end

  test "should show thread" do
    get :show, id: @thread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thread
    assert_response :success
  end

  test "should update thread" do
    patch :update, id: @thread, thread: {  }
    assert_redirected_to thread_path(assigns(:thread))
  end

  test "should destroy thread" do
    assert_difference('Threads.count', -1) do
      delete :destroy, id: @thread
    end

    assert_redirected_to threads_index_path
  end
end
