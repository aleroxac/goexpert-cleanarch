# goexpert-cleanarch

## O desafio
Criar uma API onde seja possível criar(já está pronto) e listar(este é o desafio) ordens de serviços, informando um preço e uma taxa, e então retornar o preço final.

## Como rodar o projeto
``` shell
## ---------- GRPC
make install-grpc
make init-grpc

## ---------- GRAPHQL
make install-graphql
make init-graphql
make gen-graphql


## ---------- MAIN
## put the docker-compose containers up
make up

## put the docker-compose containers down
make down

## make some request
make run
```

## Funcionalidades da Linguagem Utilizadas
- ???
- ???
- ???

## Requisitos
- [ ] Esta API deve conter um servidor REST, GraphQL e gRPC.
    - [ ] Endpoint REST (GET /order)
    - [ ] Service ListOrders com GRPC
    - [ ] Query ListOrders GraphQL
- [ ] Criar as migrações necessárias
- [ ] Criar requests para criar e listar orders no arquivo api.http
- [ ] Usar docker e docker-compose para rodar tudo via containers
- [ ] Documentar informações relevantes sobre o projeto e como executá-lo
