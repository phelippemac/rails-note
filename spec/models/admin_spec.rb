require 'rails_helper'

RSpec.describe Admin, type: :model do
  it 'É válido quando criado com Email e Senha' do
    admin = Admin.new
    admin.email = 'admin@admin'
    admin.password = 'admin123'
    admin.password_confirmation = 'admin123'
    expect(admin.save).to be_truthy
  end
end