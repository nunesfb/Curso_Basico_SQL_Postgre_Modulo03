SELECT carro.renavam, carro.modelo, aluguel.data_inicial, aluguel.data_final 
	FROM public.carro 
	LEFT JOIN public.aluguel ON carro.renavam = aluguel.renavam
