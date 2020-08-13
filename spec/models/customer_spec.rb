require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'É válido quando tem Nome, Email e Telefone' do
    customer = Customer.create(
      name: 'Joao',
      email: 'joao@phelippe',
      phone: '(99) 99999-9999'
    )
    expect(customer).to be_truthy
  end
  it 'É inválido quando não tem nome'do
    customer = Customer.create(
      email: 'joao@phelippe',
      phone: '(99) 99999-9999'
    )
    expect(customer).to_not be_valid
  end
  it 'É inválido quando não tem email' do
    customer = Customer.create(
      name: 'Joao',
      phone: '(99) 99999-9999'
    )
    expect(customer).to_not be_valid
  end
  it 'É inválido quando não tem telefone' do
    customer = Customer.create(
      name: 'Joao',
      email: 'joao@phelippe'
    )
    expect(customer).to_not be_valid
  end
end