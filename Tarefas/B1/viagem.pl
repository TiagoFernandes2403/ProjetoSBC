/*
Tiago
*/
:-[search, baseDados].

restaurant(restaurante, [cliente1, cliente2, cliente3, cliente4, cliente5],[5,6,7,5,7]).

% viagem(Client1,Client2,distance):
viagem(X,Y,MIN):-(road(X,Y,MIN);road(Y,X,MIN)). % if road or symmetrical

% state transition rule s/2: s(Client1,Client2)
s(sol(LE,LC),sol(LE,LC2)):- last(LC,C), viagem(C,C2,_), \+ member(C2,LC), append(LC,[C2],LC2).

% evaluation function: (sum of distances for all pairs)
eval([_],0).
eval([Client1,Client2|R],DS):-
    viagem(Client1,Client2,D),
    eval([Client2|R],DR),
    DS is D+DR.

run(Method):- search(Method,Par,S),nl,nl,
          write('********************************************************************************************************'), nl,
          write('                                                                                                        '), nl,
          write('                                        Caminho Aconselhado                                             '), nl,
          write('                                                                                                        '), nl,
          write('********************************************************************************************************'), nl,
	      write('**  Metodo:'),write(Method),writepar(Par),nl,
            last(S,Q),
            write('**  Entregar para:'),printEntregas(Q),nl,
            write('**  Solucao:'),printCaminho(Q),nl,
	        length(S,N),N1 is N-1,write('**  Caminho:'),write(N1),nl,
            write('**  Lucro:'), getLucro(Q), nl,
            write('**  Tempo:'), printTempo(Q).

printTempo(sol(_,LC)):- eval(LC,D), D2 is D+1,write(D2).

printEntregas(sol(LE,_)):- write(LE).

printCaminho(sol(_,LC)):- write(LC).

% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst).
q2:- run(iterativedeepening).
q3:- run(breadthfirst).