-- Criação da tabela de tb_clientes
CREATE TABLE vendas.tb_clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro DATE DEFAULT CURRENT_DATE
);

-- Criação da tabela de tb_produtos
CREATE TABLE vendas.tb_produtos (
    id_produto SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco NUMERIC(10, 2) NOT NULL,
    estoque INT DEFAULT 0
);

-- Criação da tabela de tb_pedidos
CREATE TABLE vendas.tb_pedidos (
    id_pedido SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES vendas.tb_clientes(id_cliente),
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'Pendente'
);

-- Criação da tabela de tb_itens_pedido (Tabela associativa N:N)
CREATE TABLE vendas.tb_itens_pedido (
    id_pedido INT REFERENCES vendas.tb_pedidos(id_pedido),
    id_produto INT REFERENCES vendas.tb_produtos(id_produto),
    quantidade INT NOT NULL CHECK (quantidade > 0),
    preco_unitario NUMERIC(10, 2) NOT NULL,
    PRIMARY KEY (id_pedido, id_produto)
);