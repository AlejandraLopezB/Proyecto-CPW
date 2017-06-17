require 'test_helper'

class BloqueadasControllerTest < ActionController::TestCase
  setup do
    @bloqueada = bloqueadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloqueadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bloqueada" do
    assert_difference('Bloqueada.count') do
      post :create, bloqueada: { url: @bloqueada.url }
    end

    assert_redirected_to bloqueada_path(assigns(:bloqueada))
  end

  test "should show bloqueada" do
    get :show, id: @bloqueada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bloqueada
    assert_response :success
  end

  test "should update bloqueada" do
    patch :update, id: @bloqueada, bloqueada: { url: @bloqueada.url }
    assert_redirected_to bloqueada_path(assigns(:bloqueada))
  end

  test "should destroy bloqueada" do
    assert_difference('Bloqueada.count', -1) do
      delete :destroy, id: @bloqueada
    end

    assert_redirected_to bloqueadas_path
  end
end
