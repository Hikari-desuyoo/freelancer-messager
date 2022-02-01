# Freelancer messager(em desenvolvimento)
Freelancer messager é uma plataforma Web de troca de mensagens, que <b>não</b> ocorre em tempo real. O projeto está sendo feito em Ruby on Rails, e consome a API de [outro projeto](https://github.com/Hikari-desuyoo/td7-projeto-final).

## Setup e instalação
O projeto utiliza Ruby 2.7.0 e Rails 6.1.4.1.
Para preparar o projeto para execução, siga estes passos:
### 1. clonar o repositório
`git clone https://github.com/Hikari-desuyoo/freelancer-messager`
### 2. criar o container com Docker
`docker-compose build`

### Para subir a aplicação:
`docker-compose up`

### Para acessar a aplicação, abra no navegador:
`http://127.0.0.1:4000/`

### Para acessar o terminal do container: 
`docker-compose run --rm --service-ports web bash`

Uma vez aberto o terminal, pode-se usar `rspec` para executar os testes do programa, ou `rails s -b 0.0.0.0` para iniciar o servidor.