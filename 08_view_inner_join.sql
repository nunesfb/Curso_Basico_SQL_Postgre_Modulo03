CREATE VIEW Alugueis_2019 AS
SELECT aluguel.data_inicial, aluguel.data_final, aluguel.valor, 
cliente.nome
FROM aluguel
INNER JOIN cliente ON cliente.cpf = aluguel.cpf_cliente
WHERE data_inicial BETWEEN '01/01/2019' AND '31/12/2019'

