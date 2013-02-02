require 'test_helper'

class ProcessdefsControllerTest < ActionController::TestCase
  setup do
    @processdef = processdefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:processdefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create processdef" do
    assert_difference('Processdef.count') do
      post :create, processdef: { description: @processdef.description, name: @processdef.name }
    end

    assert_redirected_to processdef_path(assigns(:processdef))
  end

  test "should show processdef" do
    get :show, id: @processdef
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @processdef
    assert_response :success
  end

  test "should update processdef" do
    put :update, id: @processdef, processdef: { description: @processdef.description, name: @processdef.name }
    assert_redirected_to processdef_path(assigns(:processdef))
  end

  test "should destroy processdef" do
    assert_difference('Processdef.count', -1) do
      delete :destroy, id: @processdef
    end

    assert_redirected_to processdefs_path
  end
end
