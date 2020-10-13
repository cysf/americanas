describe "Validações do cadastro" do
  before(:each) do
    visit "https://www.americanas.com.br/"
  end

  it "e-mail já cadastrado" do
    find("#h_usr-link").hover

    click_link("Cliente novo? Cadastrar")

    fill_in "email-input", with: "teste@hotmail.com"
    fill_in "password-input", with: "wdoutEDS8I"

    click_button "Criar seu cadastro"

    expect(find(".inputGroup-error", text: "E-mail já cadastrado"))
  end

  it "senha fraca" do
    find("#h_usr-link").hover

    click_link("Cliente novo? Cadastrar")

    fill_in "email-input", with: "teste@hotmail.com"
    fill_in "password-input", with: "wd"

    expect(find(".passwordWrapper-msg", text: "fraca"))
  end

  it "cpf inválido" do
    find("#h_usr-link").hover

    click_link("Cliente novo? Cadastrar")

    fill_in "email-input", with: "teste@hotmail.com"
    fill_in "password-input", with: "wdoutEDS8I"
    fill_in "cpf-input", with: "07681101050"
    click_button "Criar seu cadastro"

    expect(find(".inputGroup-error", text: "CPF inválido."))
  end
end
