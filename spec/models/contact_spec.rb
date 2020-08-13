require 'rails_helper'

RSpec.describe Contact, type: :model do
  it 'É válido quando tem Nome, Email e Telefone' do
    contact = Contact.create(
      name: 'Joao',
      email: 'joao@phelippe',
      phone: '(99) 99999-9999',
      customer_id: 1
    )
    expect(contact).to be_truthy
  end
  it 'É inválido quando não tem nome'do
    contact = Contact.create(
      customer_id: 1,
      email: 'joao@phelippe',
      phone: '(99) 99999-9999'
    )
    expect(contact).to_not be_valid
  end
  it 'É inválido quando não tem email' do
    contact = Contact.create(
      customer_id: 1,
      name: 'Joao',
      phone: '(99) 99999-9999'
    )
    expect(contact).to_not be_valid
  end
  it 'É inválido quando não tem telefone' do
    contact = Contact.create(
      customer_id: 1,
      name: 'Joao',
      email: 'joao@phelippe'
    )
    expect(contact).to_not be_valid
  end
  it 'É inválido quando não tem chave primária' do
    contact = Contact.create(
      name: 'Joao',
      email: 'joao@phelippe',
      phone: '(99) 99999-9999'
    )
    expect(contact).to_not be_valid
  end
end

