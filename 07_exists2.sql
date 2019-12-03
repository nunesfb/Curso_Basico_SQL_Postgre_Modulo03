SELECT modelo, marca
FROM carro
WHERE EXISTS (SELECT * 
			  FROM aluguel 
			  WHERE aluguel.renavam = carro.renavam AND valor < 1000);