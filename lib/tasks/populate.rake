namespace :populate do
  desc 'Cria um usuário Admin para poder usar a aplicação'
  task admin: :environment do
    puts 'Cadastrando Admin com E-mail: "amdin@admin" e Senha: "admin"'
    Admin.create({ email: 'admin@admin', password: 'admin123', password_confirmation: 'admin123' })
    puts 'Cadastros de admin finalizado'
  end
end

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
    begin
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
    rescue
      puts 'Cadastre ao menos 1 Cliente antes de rodar esse comando'
    end
  end
end
