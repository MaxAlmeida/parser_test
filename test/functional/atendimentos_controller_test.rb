require 'test_helper'

class AtendimentosControllerTest < ActionController::TestCase
  setup do
    @atendimento = atendimentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atendimentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atendimento" do
    assert_difference('Atendimento.count') do
      post :create, atendimento: { AnoAtendimento: @atendimento.AnoAtendimento, CEPConsumidor: @atendimento.CEPConsumidor, CodigoAssunto: @atendimento.CodigoAssunto, CodigoProblema: @atendimento.CodigoProblema, CodigoRegiao: @atendimento.CodigoRegiao, CodigoTipoAtendimento: @atendimento.CodigoTipoAtendimento, DataAtendimento: @atendimento.DataAtendimento, DescricaoAssunto: @atendimento.DescricaoAssunto, DescricaoProblema: @atendimento.DescricaoProblema, DescricaoTipoAtendimento: @atendimento.DescricaoTipoAtendimento, FaixaEtariaConsumidor: @atendimento.FaixaEtariaConsumidor, GrupoAssunto: @atendimento.GrupoAssunto, GrupoProblema: @atendimento.GrupoProblema, MesAtendimento: @atendimento.MesAtendimento, Regiao: @atendimento.Regiao, SexoConsumidor: @atendimento.SexoConsumidor, TrimestreAtendimento: @atendimento.TrimestreAtendimento, UF: @atendimento.UF }
    end

    assert_redirected_to atendimento_path(assigns(:atendimento))
  end

  test "should show atendimento" do
    get :show, id: @atendimento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atendimento
    assert_response :success
  end

  test "should update atendimento" do
    put :update, id: @atendimento, atendimento: { AnoAtendimento: @atendimento.AnoAtendimento, CEPConsumidor: @atendimento.CEPConsumidor, CodigoAssunto: @atendimento.CodigoAssunto, CodigoProblema: @atendimento.CodigoProblema, CodigoRegiao: @atendimento.CodigoRegiao, CodigoTipoAtendimento: @atendimento.CodigoTipoAtendimento, DataAtendimento: @atendimento.DataAtendimento, DescricaoAssunto: @atendimento.DescricaoAssunto, DescricaoProblema: @atendimento.DescricaoProblema, DescricaoTipoAtendimento: @atendimento.DescricaoTipoAtendimento, FaixaEtariaConsumidor: @atendimento.FaixaEtariaConsumidor, GrupoAssunto: @atendimento.GrupoAssunto, GrupoProblema: @atendimento.GrupoProblema, MesAtendimento: @atendimento.MesAtendimento, Regiao: @atendimento.Regiao, SexoConsumidor: @atendimento.SexoConsumidor, TrimestreAtendimento: @atendimento.TrimestreAtendimento, UF: @atendimento.UF }
    assert_redirected_to atendimento_path(assigns(:atendimento))
  end

  test "should destroy atendimento" do
    assert_difference('Atendimento.count', -1) do
      delete :destroy, id: @atendimento
    end

    assert_redirected_to atendimentos_path
  end
end
