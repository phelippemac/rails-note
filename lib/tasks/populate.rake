namespace :populate do
  desc 'Popula o banco de dados com 50 Clientes'
  task customer: :environment do
    puts 'Cadastrando 50 clientes'
    50.times do
      Customer.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone
      )
    end
    puts 'Cadastros de clientes finalizados'
  end
end

namespace :populate do
  desc 'Popula o banco de dados de 1 a 3 contatos para cada cliente'
  task contact: :environment do
    puts 'Cadastrando de 1 a 3 contatos para cada cliente'
    Customer.all.each do |cust|
      Random.rand(1..3).times do
        Contact.create!(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          phone: Faker::PhoneNumber.cell_phone,
          customer_id: cust.id
        )
      end
    end
    puts 'Cadastros de contatos finalizados'
  end
end
