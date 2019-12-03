SELECT data_nascimento FROM cliente
UNION
SELECT data_inicial FROM aluguel
ORDER BY data_nascimento;
