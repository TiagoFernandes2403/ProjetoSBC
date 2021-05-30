/* 
Tiago
*/

:-dynamic(fact/1),
[forward, ifthen_rules, baseDados].

inicio:- nl,nl ,write('*********************************************************************************************************'), nl,
				write('*                               ACONSELHAMENTO DE UM PRATO A UM CLIENTE                                 *'), nl,
				write('*********************************************************************************************************'), nl,
				write('                                                                                                         '), nl,				 
				write('                   Aqui podera encontrar um prato que melhor se adque as suas escolhas!                  '), nl,nl,
				write('    Comecaremos por fazer-lhe algumas perguntas, por forma a conseguir sugerir o prato ideal para si!    '), nl, 
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

pergunta1:-	write('********************************************************************************************************'), nl,
			write('**  Qual a faixa etaria em que se enquadra?'), nl,
			write('**'),nl,
			write('**  1 - 16 aos 30 anos.'), nl,
			write('**  2 - 31 aos 50 anos.'), nl,
			write('**  3 - Mais de 51 anos.'), nl, nl,
			read(P1),
			(
			(P1 == 1), assert(fact(faixa_i16_30)), pergunta2;
            (P1 == 2), assert(fact(faixa_i31_50)), pergunta2;
            (P1 == 3), assert(fact(faixa_i51_mais)), pergunta2).

pergunta2:-	write('********************************************************************************************************'), nl,
			write('**  Consegue enquadrar o prato que lhe apetece em alguma destas dietas?'), nl,
			write('**'),nl,
			write('**  1 - Sim, ovo-lacteo-vegetariano.'), nl,
			write('**  2 - Sim, vegano.'), nl,
			write('**  3 - Sim, fast-food.'), nl,
			write('**  4 - Sim, geral.'), nl,
			write('**  5 - Sim, ligeira.'), nl, nl,
			read(P2),
			(
			(P2 == 1), assert(fact(dieta_ovo_lacteo_vegetariana)), fim;
            (P2 == 2), assert(fact(dieta_vegana)), fim;
            (P2 == 3), assert(fact(dieta_fast_food)), fim;
			(P2 == 4), assert(fact(dieta_geral)), pergunta3;
			(P2 == 5), assert(fact(dieta_ligeira)), pergunta3).

pergunta3:-	write('********************************************************************************************************'), nl,
			write('**  Qual a zona do pais que as suas papilas desejam visitar?'), nl,
			write('**'),nl,
			write('**  1 - Regiao Norte ou Centro.'), nl,
			write('**  2 - Regiao de Lisboa e Vale do Tejo.'), nl,
			write('**  3 - Regiao Alentejo ou Algarve.'), nl, nl,
			read(P3),
			(
			(P3 == 1), assert(fact(zona_norte_centro)), pergunta4;
            (P3 == 2), assert(fact(zona_lisboa_vale_tejo)), pergunta4;
            (P3 == 3), assert(fact(zona_alentejo_algarve)), pergunta4).

pergunta4:-	write('********************************************************************************************************'), nl,
			write('**  Qual a proteina que lhe apetece degustar?'), nl,
			write('**'),nl,
			write('**  1 - Um bom prato de carne.'), nl,
			write('**  2 - Um prato de peixe.'), nl,
			write('**  3 - Um prato onde o ovo brilhe.'), nl, nl,
			read(P4),
			(
			(P4 == 1), assert(fact(proteina_carne)), fim;
            (P4 == 2), assert(fact(proteina_peixe)), fim;
            (P4 == 3), assert(fact(proteina_ovo)), fim).
			
fim :- 			write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                                          Prato Sugerido                                            **'), nl, 
				write('**                                                                                                    **'), nl,			 
				write('********************************************************************************************************'),
				procura.

fimprocura(P):- nl, nl,
					write('    Prato Sugerido: '),perfilConsumidor(P),retractall(fact(_)),nl,nl,
					write('********************************************************************************************************').
					