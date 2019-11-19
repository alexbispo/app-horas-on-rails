# App Horas

Esta é a minha versão Ruby on Rails do App Horas, uma aplicação web para controlar as horas
trabalhadas. Gosto de usar implementar esta aplicação quando estou aprendendo alguma
tecnologia nova.

MVP (Produto mínimo viável):

  - Deve ser possível registrar um apontamento.
  - Deve ser possível listar todos os apontamentos.
  - Deve ser possível listar os apontamentos por mês e ano.
  - Deve ser possível selecionar e deletar apontamentos.
  - Deve ser possível editar um apontamento.
  - Deve ser possível manter acesso privado aos apontamentos apenas
  usando um link exclusivo, sem necessidade de cadastro ou logar no sistema.

Próximas fetures:

  - Deve ser possível baixar um arquivo no formato CSV com os apontamentos listados.
  - Deve ser possível compartilhar um link de apenas leitura.

* Versão do Ruby
  >= 2.5.5

* Inicializar o bando de dados com Docker
    $ docker-compose up -d

* Criar o usuário de banco de dados para a aplicação
    $ docker exec -it <container> /bin/bash

    $ psql -U postgres

    postgres=# create user app-horas with createdb login password 'rails';

* Rodar a suite de testes automatizados
    $ rails spec

* Intruções de para implantação
  Em breve...
