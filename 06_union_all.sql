SELECT data_nascimento FROM cliente
WHERE data_nascimento BETWEEN '01/01/1980' AND '31/12/1990'
UNION ALL
SELECT data_inicial FROM aluguel
WHERE data_inicial BETWEEN '01/01/2019' AND '31/12/2019'