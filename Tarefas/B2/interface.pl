/*
David + Gonçalo + Pedro 
*/
:-dynamic(fact/1), dynamic(resultado/1),
[determinar_trajeto].

inicio:- nl,nl ,write('*********************************************************************************************************'), nl,nl,
				write('                                   OTIMIZACAO DO TRAJETO PARA UMA ENTREGA                                '), nl,nl,
				write('*********************************************************************************************************'), nl,
				write('                                                                                                         '), nl,nl,			 
				write('                          Aqui pode selecionar o criterio de otimizacao do trajeto                       '), nl,              
			    write('  	                          para a entrega de uma refeicao a um cliente.                              '), nl,nl, 
				write('                                                                                                         '), nl,			 
				write('*********************************************************************************************************'), nl,
				write('**   Menu:'), nl,
				write('**'), nl,
				write('**   1- Iniciar'), nl,
				write('**   2- Sair'), nl,nl,
				read(Y),
				avancaInterface(Y).

avancaInterface(1):- pergunta1.
avancaInterface(2):- write('Obrigado, volte sempre!'), halt.
avancaInterface(other):- write('Por favor, introduza uma opcao valida!'), inicio.

pergunta1:-	nl,nl,write('********************************************************************************************************'), nl,
			write('**  Selecione um metodo de otimizacao para a sua entrega!'), nl,
			write('**'),nl,
			write('**  1 - Tendo em conta o lucro maximo.'), nl,
			write('**  2 - Tendo em conta o tempo de entrega minimo, pelo metodo mais_rapido.'), nl,
			write('**  3 - Tendo em conta o tempo de entrega minimo, pelo metodo hillclimbing.'), nl,
			write('**  4 - Tendo em conta uma analise combinada dos dois fatores anteriores.'), nl, nl,
			read(P1),
			(
			(P1 == 1), 	write("Funcionalidade nao implementada.");
			(P1 == 2),  resultado(mais_rapido);
            (P1 == 3), 	resultado(hillclimbing);
			(P1 == 4), 	write("Funcionalidade nao implementada.");
			retractall(resultado(_))).
