CREATE VIEW Alugueis_2019 AS
SELECT codigo_aluguel, data_inicial, data_final, valor
FROM aluguel
WHERE data_inicial BETWEEN '01/01/2019' AND '31/12/2019'
