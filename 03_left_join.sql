SELECT cliente.cpf, cliente.nome, aluguel.data_inicial, aluguel.data_final 
	FROM public.cliente 
	LEFT JOIN public.aluguel ON cliente.cpf = aluguel.cpf_cliente
