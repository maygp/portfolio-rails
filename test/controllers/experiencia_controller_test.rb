require "test_helper"

class ExperienciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experiencium = experiencia(:one)
  end

  test "should get index" do
    get experiencia_url
    assert_response :success
  end

  test "should get new" do
    get new_experiencium_url
    assert_response :success
  end

  test "should create experiencium" do
    assert_difference('Experiencium.count') do
      post experiencia_url, params: { experiencium: { aluno_id: @experiencium.aluno_id, cargo: @experiencium.cargo, curriculo_id: @experiencium.curriculo_id, dataFim: @experiencium.dataFim, dataInicio: @experiencium.dataInicio, descricao: @experiencium.descricao, empresa: @experiencium.empresa } }
    end

    assert_redirected_to experiencium_url(Experiencium.last)
  end

  test "should show experiencium" do
    get experiencium_url(@experiencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_experiencium_url(@experiencium)
    assert_response :success
  end

  test "should update experiencium" do
    patch experiencium_url(@experiencium), params: { experiencium: { aluno_id: @experiencium.aluno_id, cargo: @experiencium.cargo, curriculo_id: @experiencium.curriculo_id, dataFim: @experiencium.dataFim, dataInicio: @experiencium.dataInicio, descricao: @experiencium.descricao, empresa: @experiencium.empresa } }
    assert_redirected_to experiencium_url(@experiencium)
  end

  test "should destroy experiencium" do
    assert_difference('Experiencium.count', -1) do
      delete experiencium_url(@experiencium)
    end

    assert_redirected_to experiencia_url
  end
end
