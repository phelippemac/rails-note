require 'rails_helper'

feature 'Visitante acessa Index' do
  scenario 'com sucesso' do
    visit home_index_path

    expect(page).to have_content('APP')
  end
end

