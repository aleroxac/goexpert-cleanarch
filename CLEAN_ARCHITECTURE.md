# Clean Architecture

## Arquitetura
- Definição do formato que o software terá
- Divisão de componentes
- Comunicação entre componentes
- Uma boa arquitetura vai facilitar o processo de desenvolvimento, deploy, operação e manutenção

## Objetivos de uma boa arquitetura
- O principal, é dar suporte ao ciclo de vida do sistema
- Uma boa arquitetura torna o sistema fácil de entender, fácil de desenvolver, fácil de manter e fácil de implantar
- O objetivo final é minimizar o custo de vida útil do sistema e maximizar a produtividade do programador

## Casos de uso
- Representam intenções
- Servem para clarificar os comportamentos do software
- Detalhes não devem impactar nas regras de negócio
- Frameworks, bancos de dados, apis, não devem impactar as regras de negócio

## Casos de uso e SRP(Single Responsability Principle)
- Temos a tendência de "reaproveitar" use cases por serem muito parecidos
    - Exemplo
        - insert e update. Ambos consultam se o registro existe e persistem dados, mas são use cases diferentes, visto que a alteração no código muda por RAZÕES diferentes

## DTO(Data Transfer Object)
- Trafega dados entre os limites arquiteturais
- Objeto anêmico, sem comportamento
- Contém dados(input ou output)
- NÃO possui regras de negócio
- NÃO possui comportamento
- NÃO faz nada!

## Presenters
- Objetos de transformação
- Adequa o DTO de output no formato correto para entregar o resultado
- Um sistema pode ter diversos formatos de entrega: xml, json, protobuf, graghql, cli, etc
``` go
input := CategoryInputDTO("name")
output := CreateCategoryUseCase(input)
jsonResult := CategoryPresenter(output).toJSON();
xmlResult := CategoryPresenter(output).toXML();
fmt.Println(jsonResult)
fmt.Println(xmlResult)
```

## Entidades
- Entidades da Clean Architecture são diferentes das entidades do DDD; no ddd é a representação de algo único na aplicação e no clean-arch é um conceito de camada de negócio
- Camada de regras de negócio
- Elas se aplicam em qualquer situação
- Não há definição explícita de como criar as entidades
- Normalmente utilizamos táticas do DDD(agregados, entidades, objetos de valor, contratos, etc)
- clean-arch(entidades) = DDD(agregados + domain services)
