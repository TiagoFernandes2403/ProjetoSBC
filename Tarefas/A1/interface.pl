/*
Tiago Fernandes - toda
*/
:-dynamic(fact/1),
[forward, baseConhecimentoV2, baseDados].

inicio:- nl,nl ,write('*********************************************************************************************************'), nl,nl,
				write('                                ACONSELHAMENTO DE UM PRATO A UM CLIENTE                                  '), nl,nl,
				write('*********************************************************************************************************'), nl,
				write('                                                                                                         '), nl,nl,				 
				write('                   Aqui podera encontrar um prato que melhor se adque as suas escolhas!                  '), nl,nl,
				write('    Comecaremos por fazer-lhe algumas perguntas, por forma a conseguir sugerir o prato ideal para si!    '), nl,nl,
				write('                                                                                                         '), nl,			 
				write('*********************************************************************************************************'), nl,
				write('**   Menu:'), nl,
				write('**'), nl,
				write('**   1- Iniciar'), nl,
				write('**   2- Sair'), nl,nl,
				read(Y),
				avancaInterface(Y).

avancaInterface(1):- pergunta1.
avancaInterface(2):- write('Volte sempre!'), halt.
avancaInterface(other):- write('Insira uma opcao valida!'), inicio.

pergunta1:-	nl,nl,write('********************************************************************************************************'), nl,nl,
			write('**  Qual a faixa etaria em que se enquadra?'), nl,
			write('**'),nl,
			write('**  1 - 16 aos 30 anos.'), nl,
			write('**  2 - 31 aos 50 anos.'), nl,
			write('**  3 - Mais de 51 anos.'), nl, nl,
			read(P1),
			(
			(P1 == 1), assert(fact(i16_30)), pergunta2;
            (P1 == 2), assert(fact(i31_50)), pergunta2;
            (P1 == 3), assert(fact(i51_mais)), pergunta2).

pergunta2:-	nl,nl,write('********************************************************************************************************'), nl,
			write('**  Consegue enquadrar o prato que lhe apetece em alguma destas dietas?'), nl,
			write('**'),nl,
			write('**  1 - Sim, ovo-lacteo-vegetariano.'), nl,
			write('**  2 - Sim, vegano.'), nl,
			write('**  3 - Sim, fast-food.'), nl,
			write('**  4 - Sim, geral.'), nl,
			write('**  5 - Sim, ligeira.'), nl, nl,
			read(P2),
			(
			(P2 == 1), assert(fact(ovo_lacteo_vegetariano)), fim;
            (P2 == 2), assert(fact(vegano)), fim;
            (P2 == 3), assert(fact(fast_food)), fim;
			(P2 == 4), assert(fact(geral)), pergunta3;
			(P2 == 5), assert(fact(ligeira)), pergunta3).

pergunta3:-	nl,nl,write('********************************************************************************************************'), nl,
			write('**  Qual a zona do pais que as suas papilas desejam visitar?'), nl,
			write('**'),nl,
			write('**  1 - Regiao Norte ou Centro.'), nl,
			write('**  2 - Regiao de Lisboa e Vale do Tejo.'), nl,
			write('**  3 - Regiao Alentejo ou Algarve.'), nl, nl,
			read(P3),
			(
			(P3 == 1), assert(fact(norte_centro)), pergunta4;
            (P3 == 2), assert(fact(lisboa_vale_tejo)), pergunta4;
            (P3 == 3), assert(fact(alentejo_algarve)), pergunta4).

pergunta4:-	nl,nl,write('********************************************************************************************************'), nl,
			write('**  Qual a proteina que lhe apetece degustar?'), nl,
			write('**'),nl,
			write('**  1 - Um bom prato de carne.'), nl,
			write('**  2 - Um prato de peixe.'), nl,
			write('**  3 - Um prato onde o ovo brilhe.'), nl, nl,
			read(P4),
			(
			(P4 == 1), assert(fact(carne)), fim;
            (P4 == 2), assert(fact(peixe)), fim;
            (P4 == 3), assert(fact(ovo)), fim).
			
fim :- 			nl,nl,write('********************************************************************************************************'), nl,
				write('                                                                                                        '), nl,			 
				write('                                            Prato Sugerido                                              '), nl, 
				write('                                                                                                        '), nl,			 
				write('********************************************************************************************************'),
				procura.

fimprocura(P):- nl, nl,
					write('    Prato Sugerido: '),perfilConsumidor(P),nl,
					write('********************************************************************************************************').
					