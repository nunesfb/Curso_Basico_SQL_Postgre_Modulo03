SELECT nome, cpf
FROM cliente
WHERE EXISTS (SELECT * 
			  FROM aluguel 
			  WHERE aluguel.cpf_cliente = cliente.cpf AND valor < 1000);
