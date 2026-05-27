-- 1. Qual é o valor total gasto por cada cliente?
-- Demonstra uso de JOINs, agregação (SUM) e agrupamento (GROUP BY)

SELECT
    c.nome AS cliente,
    SUM(ip.quantidade * ip.preco_unitario) AS total_gasto
FROM vendas.tb_clientes c
JOIN vendas.tb_pedidos p ON c.id_cliente = p.id_cliente
JOIN vendas.tb_itens_pedido ip ON p.id_pedido = ip.id_pedido
GROUP BY c.nome
ORDER BY total_gasto DESC;


-- 2. Quais são os produtos mais vendidos em quantidade?

SELECT
    pr.nome AS produto,
    SUM(ip.quantidade) AS total_vendido
FROM vendas.tb_produtos pr
JOIN vendas.tb_itens_pedido ip ON pr.id_produto = ip.id_produto
GROUP BY pr.nome
ORDER BY total_vendido DESC;


-- 3. Qual é a receita total do e-commerce por status do pedido?

SELECT
    p.status,
    SUM(ip.quantidade * ip.preco_unitario) AS receita_total
FROM vendas.tb_pedidos p
JOIN vendas.tb_itens_pedido ip ON p.id_pedido = ip.id_pedido
GROUP BY p.status;
