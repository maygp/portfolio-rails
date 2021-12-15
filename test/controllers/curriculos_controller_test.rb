require "test_helper"

class CurriculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curriculo = curriculos(:one)
  end

  test "should get index" do
    get curriculos_url
    assert_response :success
  end

  test "should get new" do
    get new_curriculo_url
    assert_response :success
  end

  test "should create curriculo" do
    assert_difference('Curriculo.count') do
      post curriculos_url, params: { curriculo: { aluno_id: @curriculo.aluno_id, conhecimentos: @curriculo.conhecimentos, formacao: @curriculo.formacao, idiomas: @curriculo.idiomas, outros: @curriculo.outros } }
    end

    assert_redirected_to curriculo_url(Curriculo.last)
  end

  test "should show curriculo" do
    get curriculo_url(@curriculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_curriculo_url(@curriculo)
    assert_response :success
  end

  test "should update curriculo" do
    patch curriculo_url(@curriculo), params: { curriculo: { aluno_id: @curriculo.aluno_id, conhecimentos: @curriculo.conhecimentos, formacao: @curriculo.formacao, idiomas: @curriculo.idiomas, outros: @curriculo.outros } }
    assert_redirected_to curriculo_url(@curriculo)
  end

  test "should destroy curriculo" do
    assert_difference('Curriculo.count', -1) do
      delete curriculo_url(@curriculo)
    end

    assert_redirected_to curriculos_url
  end
end
