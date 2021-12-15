require "application_system_test_case"

class ExperienciaTest < ApplicationSystemTestCase
  setup do
    @experiencium = experiencia(:one)
  end

  test "visiting the index" do
    visit experiencia_url
    assert_selector "h1", text: "Experiencia"
  end

  test "creating a Experiencium" do
    visit experiencia_url
    click_on "New Experiencium"

    fill_in "Aluno", with: @experiencium.aluno_id
    fill_in "Cargo", with: @experiencium.cargo
    fill_in "Curriculo", with: @experiencium.curriculo_id
    fill_in "Datafim", with: @experiencium.dataFim
    fill_in "Datainicio", with: @experiencium.dataInicio
    fill_in "Descricao", with: @experiencium.descricao
    fill_in "Empresa", with: @experiencium.empresa
    click_on "Create Experiencium"

    assert_text "Experiencium was successfully created"
    click_on "Back"
  end

  test "updating a Experiencium" do
    visit experiencia_url
    click_on "Edit", match: :first

    fill_in "Aluno", with: @experiencium.aluno_id
    fill_in "Cargo", with: @experiencium.cargo
    fill_in "Curriculo", with: @experiencium.curriculo_id
    fill_in "Datafim", with: @experiencium.dataFim
    fill_in "Datainicio", with: @experiencium.dataInicio
    fill_in "Descricao", with: @experiencium.descricao
    fill_in "Empresa", with: @experiencium.empresa
    click_on "Update Experiencium"

    assert_text "Experiencium was successfully updated"
    click_on "Back"
  end

  test "destroying a Experiencium" do
    visit experiencia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Experiencium was successfully destroyed"
  end
end
