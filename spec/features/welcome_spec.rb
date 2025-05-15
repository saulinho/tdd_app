require 'rails_helper'

feature 'Welcome', type: :feature do
  scenario 'Mostra a mensagem de Bem-Vindo' do
    visit(root_path)
    expect(page).to have_content 'Bem-Vindo'
  end

  scenario 'Link de cadastro de clientes' do
    visit(root_path)
    print page.html
    click_on('Cadastro de Clientes')
  end
end
