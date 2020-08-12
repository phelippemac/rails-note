<h1 align="center">
  <img src="https://ik.imagekit.io/795unnjv9m/Meu_portifolio_-_Padr_o_yEh6G0CIc.png">
</h1>

<h3 align="center">
  <img src="https://ik.imagekit.io/795unnjv9m/RailsNote_oQ1lUNk5I.png?" height="180">
</h3>

## Galeria

Ainda Vazia 😒

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

- [simple-form](https://github.com/heartcombo/simple_form)
- [devise](https://github.com/heartcombo/devise)

## Instalação

Comece clonando este repositório e entrando no diretório criado.

```bash
$ git clone https://github.com/phelippemac/rails-note.git
$ cd rails-note
```

Abra com seu editor de texto favorito e crie um arquivo em *./config* chamado *local_env.yml* com o seguinte conteúdo:

```ruby
SAMPLE_APP_DATABASE_USER: 'USUÁRIO DO POSTGRES'
SAMPLE_APP_DATABASE_PASSWORD: 'SENHRA DO USUÀRIO'
```
*OBS: Este arquivo deve conter o usuário e senhra do postgres, para que passa criar e rodar as migrations.*

Rode então o seguinte comando:

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