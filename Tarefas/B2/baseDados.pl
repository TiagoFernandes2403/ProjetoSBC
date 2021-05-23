:-[search].

% -- database:
%   state representation: S, where S is a list with the full path followed by the person 
initial([restaurante]). % initial

goal(X):- member(cliente1,X), member(cliente2,X), member(cliente3,X), member(cliente4,X), member(cliente5,X). % destination

% --- knowledge base:
% road(Origin,Destination,Distance-in-min)
road(restaurante, cliente1, 5).
road(restaurante, cliente4, 7).
road(cliente1, cliente4, 5).
road(cliente1, cliente2, 5).
road(cliente1, cliente5, 5).
road(cliente4, cliente2, 2).
road(cliente4, cliente3, 4).
road(cliente2, cliente5, 2).
road(cliente2, cliente3, 3).
road(cliente3, cliente5, 5).

% travel(Client1,Client2,distance):
travel(X,Y,MIN):-(road(X,Y,MIN);road(Y,X,MIN)). % true if road or symmetrical

% state transition rule s/2: s(Client1,Client2)
s(L1,L2):- last(L1,N1),travel(N1,N2,_),append(L1,[N2],L2). % link s(O,D,Dist) with s(O,D)

% evaluation function: (sum of distances for all pairs)
eval([_],0).
eval([Client1,Client2|R],DS):- 
	travel(Client1,Client2,D),
	eval([Client2|R],DR),
	DS is D+DR.

% execute and show a search method result:
run(Method):- search(Method,Par,S),
	      write('method:'),write(Method),writepar(Par),nl,
              write('solution:'),write(S),nl,
	      length(S,N),N1 is N-1,write('solution steps:'),write(N1),nl,
              last(S,LS),
              eval(LS,D),write('distance:'),write(D).
% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst).
q2:- run(iterativedeepening).
q3:- run(breadthfirst).
