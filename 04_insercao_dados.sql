-- Inserindo Clientes

INSERT INTO vendas.tb_clientes 
  (nome, email) 
VALUES
  ('Ana Silva', 'ana.silva@email.com'),
  ('Carlos Souza', 'carlos.souza@email.com'),
  ('Beatriz Costa', 'beatriz.costa@email.com');


-- Inserindo Produtos

INSERT INTO vendas.tb_produtos 
  (nome, categoria, preco, estoque) 
VALUES
  ('Teclado Mecânico', 'Eletrônicos', 250.00, 50),
  ('Mouse Sem Fio', 'Eletrônicos', 120.00, 80),
  ('Monitor 24"', 'Eletrônicos', 800.00, 30),
  ('Cadeira Ergônomica', 'Móveis', 1200.00, 15);


-- Inserindo Pedidos

INSERT INTO vendas.tb_pedidos 
  (id_cliente, status) 
VALUES
  (1, 'Concluído'), -- Pedido da Ana
  (2, 'Processando'), -- Pedido do Carlos
  (1, 'Concluído'); -- Outro pedido da Ana


-- Inserindo Itens nos Pedidos (Vinculando produtos aos pedidos)

INSERT INTO vendas.tb_itens_pedido 
  (id_pedido, id_produto, quantidade, preco_unitario) 
VALUES
  (1, 1, 1, 250.00), -- Ana comprou 1 Teclado
  (1, 2, 1, 120.00), -- Ana comprou 1 Mouse
  (2, 4, 1, 1200.00), -- Carlos comprou 1 Cadeira
  (3, 3, 2, 800.00); -- Ana comprou 2 Monitores
  