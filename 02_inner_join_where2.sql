SELECT cliente.cpf, cliente.nome, aluguel.data_inicial, aluguel.data_final,
aluguel.valor, carro.renavam, carro.modelo
	FROM public.aluguel 
	INNER JOIN public.cliente ON cliente.cpf = aluguel.cpf_cliente
	INNER JOIN public.carro ON carro.renavam = aluguel.renavam
	WHERE nome = 'teste'