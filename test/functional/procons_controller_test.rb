require 'test_helper'

class ProconsControllerTest < ActionController::TestCase
  setup do
    @procon = procons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:procons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create procon" do
    assert_difference('Procon.count') do
      post :create, procon: { DDD: @procon.DDD, cargo: @procon.cargo, email: @procon.email, endereco: @procon.endereco, fax: @procon.fax, responsavel: @procon.responsavel, telefone: @procon.telefone }
    end

    assert_redirected_to procon_path(assigns(:procon))
  end

  test "should show procon" do
    get :show, id: @procon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @procon
    assert_response :success
  end

  test "should update procon" do
    put :update, id: @procon, procon: { DDD: @procon.DDD, cargo: @procon.cargo, email: @procon.email, endereco: @procon.endereco, fax: @procon.fax, responsavel: @procon.responsavel, telefone: @procon.telefone }
    assert_redirected_to procon_path(assigns(:procon))
  end

  test "should destroy procon" do
    assert_difference('Procon.count', -1) do
      delete :destroy, id: @procon
    end

    assert_redirected_to procons_path
  end
end
