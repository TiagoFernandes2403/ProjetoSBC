:-[auxiliar,hill,search].

% driving distance (in min)
distance(restaurante, cliente1, 5).
distance(restaurante, cliente4, 7).
distance(cliente1, cliente4, 5).
distance(cliente1, cliente2, 5).
distance(cliente1, cliente5, 5).
distance(cliente4, cliente2, 2).
distance(cliente4, cliente3, 4).
distance(cliente2, cliente5, 2).
distance(cliente2, cliente3, 3).
distance(cliente3, cliente5, 5).

travel(X,Y,D):-distance(Y,X,D);distance(X,Y,D). % true if dist or symmetrical

% representation: S is a list of clients
% (first and last client need to be the same)

% evaluation function: (sum of distances for all pairs)
eval([_],0).
eval([Client1,Client2|R],DS):- 
	travel(Client1,Client2,D),
	eval([Client2|R],DR),
	DS is D+DR.

% change: switch 2 adjacent clients at random position:	
change(S1,S2):-
	length(S1,L),
	random_between(1,L,P1),
        change(S1,P1,L,S2).
% change travelling path, auxiliary function:
change(S1,P1,L,S2):- % general case, normal switch
	P1>2, P1<L, % normal switch
	nth1(P1,S1,Client1),
	P2 is P1-1,
	nth1(P2,S1,Client2),
	replace_list(S1,P1,Client2,S11),
	replace_list(S11,P2,Client1,S2).
change(S1,1,L,S2):- % P1 is 1
	P2 is L-1, % last non repeated city
        nth1(1,S1,Client1),
	nth1(P2,S1,Client2),
	replace_list(S1,1,Client2,S11),
	replace_list(S11,P2,Client1,S12),
	replace_list(S12,L,Client2,S2). % last
change(S1,2,L,S2):- % P1 is 2
	P2 is 1, % first element
        nth1(2,S1,Client1),
	nth1(P2,S1,Client2),
	replace_list(S1,2,Client2,S11),
	replace_list(S11,P2,Client1,S12),
	replace_list(S12,L,Client1,S2). % last
change(S1,L,L,S2):- % P1 is L
	P2 is L-1, % last non repeated city
        nth1(L,S1,Client1),
	nth1(P2,S1,Client2),
	replace_list(S1,L,Client2,S11),
	replace_list(S11,P2,Client1,S12),
	replace_list(S12,1,Client2,S2). % last


% initial solution: lets start with a bad solution:
initial([restaurante,cliente5, restaurante]).

:- set_random(seed(12345)). % set initial random seed

% S is the solution
hrun1(S,distance):- % standard hill climbing
	initial(S0), % initial solution
	% 10000 iterations, report every 1000 iterations
	time(hill_climbing(S0,[10000,200,0,min],S)),
	eval(S,distance).

hrun2(S,distance):- % stochastic hill climbing Prob=0.1 
	initial(S0), % initial solution
	% 10000 iterations, report every 1000 iterations
	time(hill_climbing(S0,[10000,200,0.2,min],S)),
	eval(S,distance).



% S is the solution
q1:- % standard hill climbing
	initial(S0), % initial solution
	% 10000 iterations, report every 2000 iterations
	time(hill_climbing(S0,[10000,2000,0,min],S)),
	eval(S,distance),
        write('sol:'),write(S),nl,write('distance:'),write(distance),nl.

q2:- % stochastic hill climbing Prob=0.2 
	initial(S0), % initial solution
	% 10000 iterations, report every 2000 iterations
	time(hill_climbing(S0,[10000,2000,0.2,min],S)),
	eval(S,distance),
        write('sol:'),write(S),nl,write('distance:'),write(distance),nl.
