# 🛒 Sistema de Gestão de Vendas (E-Commerce) — Banco de Dados PostgreSQL

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![SQL](https://img.shields.io/badge/SQL-003B5C?style=for-the-badge&logo=sqlite&logoColor=white)]()

## 📝 Sobre o Projeto
Este projeto foi desenvolvido para simular o banco de dados de um sistema de e-commerce simplificado. O objetivo principal é demonstrar habilidades práticas em **Modelagem de Dados Relacionais**, integridade referencial e escrita de **consultas SQL complexas** para geração de insights de negócios (Business Intelligence).

O sistema gerencia o fluxo essencial de um comércio eletrônico: cadastro de clientes, controle de estoque de produtos, registro de pedidos e o detalhamento dos itens comprados.

---

## 📐 Modelagem do Banco de Dados (Diagrama ER)

Abaixo está a representação visual das tabelas, suas chaves primárias (`PK`), chaves estrangeiras (`FK`) e os relacionamentos do sistema (1:N e N:N):

> 💡 *Dica: Substitua a linha abaixo pelo link da imagem do seu diagrama gerado no dbdiagram.io ou remova esta linha se preferir.*

![Diagrama Entidade-Relacionamento](SEU_LINK_DA_IMAGEM_AQUI.png)

### Regras de Negócio Implementadas:
* **Clientes:** Cada cliente possui um e-mail único e a data de cadastro é gerada automaticamente.
* **Produtos:** Possui controle de estoque mínimo por meio de travas lógicas.
* **Pedidos:** Vinculados obrigatoriamente a um cliente, registrando o status atual da compra.
* **Itens do Pedido:** Tabela associativa que permite que um pedido tenha múltiplos produtos e que um produto esteja em múltiplos pedidos, salvando o preço histórico do momento da compra.

---

## 📁 Estrutura do Repositório

O projeto está organizado de forma sequencial para facilitar a execução:

* `01_criacao_banco_de_dados.sql`: Script para criação do banco de dados.
* `02_criacao_schema.sql`: Script para definição do schema estrutural.
* `03_criacao_tabelas.sql`: Script DDL responsável por criar a estrutura das tabelas e suas restrições.
* `04_insercao_dados.sql`: Script DML que popula o banco com dados fictícios consistentes para testes.
* `05_consultas_negocio.sql`: Script DQL contendo análises e relatórios de inteligência de negócio.

---

## 📊 Insights extraídos com SQL (DQL)

O grande diferencial deste projeto é a capacidade de transformar dados brutos em decisões estratégicas. No arquivo `05_consultas_negocio.sql`, você encontrará consultas que respondem a:

1. **Faturamento por Cliente:** Identifica quais clientes geram maior receita para a empresa (Uso de `JOIN`, `SUM` e `GROUP BY`).
2. **Ranking de Produtos Mais Vendidos:** Destaca quais itens têm maior saída no estoque (Uso de funções agregadas e ordenação).
3. **Saúde Financeira por Status:** Permite analisar o valor total de pedidos concluídos vs. pedidos ainda pendentes de pagamento.

---

## 🚀 Como Executar o Projeto

Se quiser testar o projeto localmente, você precisará do **PostgreSQL** instalado.

1. Clone este repositório:
```bash
git clone (https://github.com/luizaraujo18/sistema-gestao-vendas-sql)
```

2. Abra o seu terminal ou ferramenta de preferência (ex: pgAdmin, DBeaver).

3. Execute os scripts na ordem correta:
* Execute `01_criacao_banco_de_dados.sql`
* Execute `02_criacao_schema.sql`
* Execute `03_criacao_tabelas.sql`
* Execute `04_insercao_dados.sql`
* Execute `05_consultas_negocio.sql`

---

## 🛠️ Tecnologias e Ferramentas

* **Banco de Dados:** PostgreSQL
* **Modelagem:** dbdiagram.io
* **Editor de Código:** pgAdmin

---
Feito com 🧠 por [Luiz Carlos](https://github.com/SEU_USUARIO)
