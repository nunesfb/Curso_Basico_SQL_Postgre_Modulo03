SELECT carro.renavam, carro.modelo, aluguel.data_inicial, aluguel.data_final 
	FROM public.carro 
	RIGHT JOIN public.aluguel ON carro.renavam = aluguel.renavam
