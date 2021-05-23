/*
David - l4 a l25
Gonçalo - l43 a l53
Tiago - l27 a l39
*/
:-dynamic(fact/1),
[viagem].

inicio:- nl,nl ,write('*********************************************************************************************************'), nl,nl,
				write('                               ACONSELHAMENTO DO TRAJETO PARA UMA ENTREGA                                '), nl,nl,
				write('*********************************************************************************************************'), nl,
				write('                                                                                                         '), nl,nl,			 
				write('                          Aqui pode obter aconselhamento de um trajeto possivel    		                '), nl,              
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
			write('**  Qual o numero de clientes para qual a entrega se destina?'), nl,
			write('**'),nl,
			write('**  1 - Entrega para um cliente.'), nl,
			write('**  2 - Entrega para dois clientes.'), nl, nl,
			read(P1),
			(
			(P1 == 1), assert((initial(sol([E],[R])):- restaurant(R,LE,_), random_member(E,LE))), 
					   assert((goal(sol([E2],LC)):- last(LC,E2))), 
					   assert((getLucro(sol(LE,_)):- member(A,LE), lucro(A,Y), write(Y))), pergunta2;
            (P1 == 2), assert((initial(sol([E,E2],[R])):- restaurant(R,LE,_), random_member(E,LE), delete(LE,E,LE2),random_member(E2,LE2))), 
			           assert((goal(sol([E,E2],LC)):- (member(E,LC), last(LC,E2));(last(LC,E), member(E2,LC)))),
					   assert((getLucro(sol(LE,_)):- member(A,LE), last(LE,B), lucro(A,Y), lucro(B,Z), N is Y + Z, write(N))), pergunta2).


pergunta2:-	nl,nl,write('********************************************************************************************************'), nl,
			write('**  Que metodo de procura deseja aplicar nesta entrega para o calculo do seu trajeto?'), nl,
			write('**'),nl,
			write('**  1 - depthfirst'), nl,
			write('**  2 - iterativedeepening'), nl,
			write('**  3 - breadthfirst'), nl, nl,
			read(P2),
			(
			(P2 == 1), run(depthfirst);
            (P2 == 2), run(iterativedeepening);
			(P2 == 3), run(breadthfirst)).
