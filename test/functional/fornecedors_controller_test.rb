require 'test_helper'

class FornecedorsControllerTest < ActionController::TestCase
  setup do
    @fornecedor = fornecedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fornecedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fornecedor" do
    assert_difference('Fornecedor.count') do
      post :create, fornecedor: { cnpj: @fornecedor.cnpj, descricao_cnaep_principal: @fornecedor.descricao_cnaep_principal, nome_fantasia: @fornecedor.nome_fantasia, razao_social_sindec: @fornecedor.razao_social_sindec, tipo_fornecedor: @fornecedor.tipo_fornecedor }
    end

    assert_redirected_to fornecedor_path(assigns(:fornecedor))
  end

  test "should show fornecedor" do
    get :show, id: @fornecedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fornecedor
    assert_response :success
  end

  test "should update fornecedor" do
    put :update, id: @fornecedor, fornecedor: { cnpj: @fornecedor.cnpj, descricao_cnaep_principal: @fornecedor.descricao_cnaep_principal, nome_fantasia: @fornecedor.nome_fantasia, razao_social_sindec: @fornecedor.razao_social_sindec, tipo_fornecedor: @fornecedor.tipo_fornecedor }
    assert_redirected_to fornecedor_path(assigns(:fornecedor))
  end

  test "should destroy fornecedor" do
    assert_difference('Fornecedor.count', -1) do
      delete :destroy, id: @fornecedor
    end

    assert_redirected_to fornecedors_path
  end
end
