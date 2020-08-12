<h1 align="center">
  <img src="https://ik.imagekit.io/795unnjv9m/Meu_portifolio_-_Padr_o_yEh6G0CIc.png">
</h1>

<h3 align="center">
  <img src="https://ik.imagekit.io/795unnjv9m/RailsNote_oQ1lUNk5I.png?" height="180">
</h3>

## Galeria

Ainda Vazia 😒 # O projeto encontra-se em fase de contrução das Views

## Sobre

É um projeto realizado como um prova prática de conhecimentos a nível junior de desenvolvimento WEB.
Temo o intuito de gravar dados de Clientes e seus Contatos, e ainda contar com um sistema de Login.

## Prototipação do Banco de Dados

<h1 align="center">
  <img src="https://ik.imagekit.io/795unnjv9m/full-stack-vaga_KRGqZLIKl_.png">


## Ferramentas Utilizadas

- Rails - 6.0.3.2
- Ruby - 2.7.1p83
- PostgreSql
- Bootstrap 4

## GEMs

- [simple-form](https://github.com/heartcombo/simple_form) - The basic goal of Simple Form is to not touch your way of defining the layout, letting you find the better design for your eyes
gem 'simple_form'
- [devise](https://github.com/heartcombo/devise) - Devise is a flexible authentication solution for Rails based on Warden
- [font-awesome-rails](https://github.com/bokmann/font-awesome-rails) - provides the Font-Awesome web fonts and stylesheets as a Rails engine for use with the asset pipeline.
gem "font-awesome-rails"
- [kaminari](https://github.com/kaminari/kaminari) - A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for modern web app frameworks and ORMs
- [rails-i18n](https://github.com/svenfuchs/rails-i18n) - Centralization of locale data collection for Ruby on Rails.
## Instalação

Comece clonando este repositório e entrando no diretório criado.

```bash
$ git clone https://github.com/phelippemac/rails-note.git
$ cd rails-note
```

Abra com seu editor de texto favorito e crie um arquivo em *./config* chamado *local_env.yml* com o seguinte conteúdo:

```yml
SAMPLE_APP_DATABASE_USER: '[USUÁRIO DO POSTGRES]'
SAMPLE_APP_DATABASE_PASSWORD: '[SENHA DO USUÀRIO]'
```
*OBS: Este arquivo deve conter o usuário e senha do postgres, para que passa criar e rodar as migrations.*

Rode então o seguinte comando no terminal:

```bash
$ rails db:create db:migrate
```
Posterior a isso, está quase pronto, basta rodar:

```bash
$ rails server
```
ou
```bash
$ rails s
```

E acessar a aplicação no endereço: *localhost:3000*

## Opcional 

 Você pode popular o banco de dados com os seguintes comandos no terminal:

 - Criar 50 clientes com informações aleatórias:

```bash
$ rails populate:customer
```

- Criar de 1 a 3 contatos para cada cliente existente de forma também aleatória.
```bash
$ rails populate:contact
```
*Obs: O 'populate:contact' só pode ser rodado depois que houver algum Cliente cadastrado*

