SELECT nome, cpf, bairro
	FROM public.cliente
		WHERE bairro NOT IN ('centro')