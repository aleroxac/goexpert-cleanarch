# goexpert-cleanarch

## O desafio
Criar uma API onde seja possível criar(já está pronto) e listar(este é o desafio) ordens de serviços, informando um preço e uma taxa, e então retornar o preço final.

## Como rodar o projeto

1. Instale as dependências e suba os containers
``` shell
make install
make up
```

2. Teste a aplicação: REST API server
- faça uma chamada POST para criar uma nova order via rest-client usando o arquivo [api.http](api/api.http)
- faça uma chamada GET para listar as orders via rest-client usando o arquivo [api.http](api/api.http)

3. Teste a aplicação: gRPC server
``` shell
## crie uma nova order
evans --proto internal/infra/grpc/protofiles/order.proto --host localhost --port 50051
=> call CreateOrder
=> 2
=> 10.5
=> 0.5

## liste as orders
evans --proto internal/infra/grpc/protofiles/order.proto --host localhost --port 50051
=> call ListOrders
```

4. Teste a aplicação: GraphQL server
``` shell
## crie uma nova order
mutation createOrder {
  createOrder(input: {id:"3", Price: 10.5, Tax: 0.5}) {
    id
    Price
    Tax
  }
}

## liste as orders
query queryOrders {
  listOrders {
    id
    Price
    Tax
    FinalPrice
  }
}
```

5. Baixe os containers 
``` shell
make down
```

## Funcionalidades da Linguagem Utilizadas
- di: wire
- configs: viper
- tests: testify
- messaging: amqp(rabbitmq)
- apis: net/http, grpc, graphql
- database/sql: mysql, sqlite3(unit-tests)


## Requisitos
- [x] Esta API deve conter um servidor REST, GraphQL e gRPC.
    - [x] Endpoint REST (GET /order)
    - [x] Service ListOrders com GRPC
    - [x] Query ListOrders GraphQL
- [x] Criar requests para criar e listar orders no arquivo api.http
- [x] Criar as migrações necessárias
- [x] Usar docker e docker-compose para rodar tudo via containers
- [x] Documentar informações relevantes sobre o projeto e como executá-lo
