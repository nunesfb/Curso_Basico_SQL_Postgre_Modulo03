SELECT cliente.cpf, cliente.nome, aluguel.data_inicial, aluguel.data_final 
	FROM public.cliente 
	INNER JOIN public.aluguel ON cliente.cpf = aluguel.cpf_cliente
	WHERE nome = 'teste'