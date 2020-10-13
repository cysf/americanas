describe "Cadastro" do
  before(:each) do
    visit "https://www.americanas.com.br/"
  end

  it "cadastro com sucesso" do
    fill_in "email-input", with: "vvanessafatimavieira@nextel.com.br"
    fill_in "password-input", with: "wdoutEDS8I"
    fill_in "cpf-input", with: "92435903839"
    fill_in "name-input", with: "Vanessa Fátima Vieira"
    fill_in "birthday", with: "17071985"
    find("#gender", text: "feminino").click
    fill_in "phone-input", with: "1128259933"
    click_button "Criar seu cadastro"

    expect(find(".usr-grt-text", text: "olá Vanessa"))
  end

  it "procurar Moto G6" do
    fill_in "h_search-input", with: "Moto G6"
    find("#h_search-btn").click

    expect(find("h1[class^=full-grid__Title]", text: "moto g6"))
  end

  it "adicionar dois produtos na cesta" do
    find("div[class^=col__StyledCol]").click
    find("a", text: "comprar").click
    find("span", text: "Continuar").click
    find("#icon-plus").click
  end

  it "validar total da compra inferior a 5 mil reais" do
    valor_maximo = 5000.00
    total_cesta = find(".basket-productPrice").text
    valor_cesta = total_cesta[4, total_cesta.length]

    expect(valor_cesta < valor_maximo)
  end

  it "validar parcelamento em até 10x sem juros" do
    valor_maximo_parcelamento = 10
    total_parcelamento_oferecido = find(".summary-totalInstallments").text
    valor_parcelamento_oferecido = total_parcelamento_oferecido[8, total_parcelamento_oferecido.length - 11]

    expect(valor_parcelamento_oferecido < valor_maximo_parcelamento)
  end
end
