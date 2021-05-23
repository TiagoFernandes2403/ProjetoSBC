/*
David Oliveira - l73 a l103
Gonçalo Adães - l105 a 138
Pedro Fontes - l8 a l46 
Tiago Fernandes - l48 a l70
*/
/*prato(Nome, Preco, Descricao, Dieta, YonaPais, Proteina, Idade)*/
/*pratos carne*/
prato("Picanha Premium", "Bifes de picanha grelhados acompanhada com arroz, batata frita e feijao preto", 12.43, [geral], [norte_centro, lisboa_vale_tejo], [carne], [i16_30]).
prato("Coelho frito", "", 12.00, [geral], [alentejo_algarve], [carne], [i16_30]).
prato("Cozido a portuguesa", "Trata-se de uma iguaria composta por uma miríadade de vegetais, carnes e enchidos cozidos.", 15.00, [geral], [norte_centro], [carne], [i31_50]).
prato("Perdiz a convento de alcantra", "",11.21, [geral], [lisboa_vale_tejo], [carne], [i31_50]).
prato("Ensopado de Borrego", "Borrego, alho, banha de porco, vinho branco, pimenta branca, pao alentejano", 18.00, [geral], [alentejo_algarve], [carne], [i31_50, i51_mais]).
prato("Papas de sarrabulho", "", 10.00, [geral], [norte_centro], [carne], [i51_mais]).
prato("Mao de vaca com grao", "A designação deve-se ao facto de ser servida metade da mão de vaca em cada dose.", 9.54, [geral], [lisboa_vale_tejo], [carne], [i51_mais]).
prato("Bifana Transmontana", "Carne de porco, chutney de cogumelos selvagens, chutney de cebola roxa e queijo.", 6.80, [ligeira], [norte_centro], [carne], [i16_30, i31_50]).
prato("Bife de peru grelhado", "Acompanha com arroz branco, batata frita e feijao preto.", 9.95, [ligeira], [lisboa_vale_tejo], [carne], [i16_30, i31_50]).
prato("Empadas de galinha", "Frango, alho picado, tomate pelado picado, caldo de galinha, farinha, salsa, pimenta, noz-moscada, ovo", 7.50, [ligeira], [alentejo_algarve], [carne], [i16_30, i31_50, i51_mais]).
prato("Frango de churrasco", "", 8.08, [ligeira], [norte_centro, lisboa_vale_tejo], [carne], [i51_mais]).

/*pratos peixe*/
prato("Bacalhau a braga", "", 17.00, [geral], [norte_centro], [peixe], [i16_30]).
prato("Bacalhau com Broa", "Bacalhau com broa acompanhado por grelos salteados e batata a murro.", 16.50, [geral], [norte_centro], [peixe], [i31_50]).
prato("Pataniscas de bacalhau", "", 9.77, [geral], [lisboa_vale_tejo], [peixe], [i16_30, i31_50]).
prato("Arroz de polvo", "", 18.00, [geral], [alentejo_algarve], [peixe], [i16_30]).
prato("Guisado de peixe", "Peixe branco, tomates pelados, cha de mel, coentros, amendoas, cominhos, gengibre, canela", 15.00, [geral], [alentejo_algarve], [peixe], [i31_50, i51_mais]).
prato("Arroz de lampreia", "", 20.00, [geral], [norte_centro], [peixe], [i51_mais]).
prato("Sardinha assada", "", 11.50, [geral], [lisboa_vale_tejo], [peixe], [i51_mais]).
prato("Filetes de pescada", "", 22.00, [ligeira], [norte_centro], [peixe], [i16_30]).
prato("Salmao grelhado", "Posta de salmao grelhada com legumes e arroz branco.", 9.95, [ligeira], [lisboa_vale_tejo], [peixe], [i16_30]).
prato("Polvo a lagareiro", "Polvo com azeite, temperado com muito alho e acompanhado de batatas assadas.", 20.00, [ligeira], [norte_centro], [peixe], [i31_50, i51_mais]).
prato("Peixinhos da horta", "Esta especialidade pode ser servida como petisco, entrada ou acompanhamento de pratos de carne ou peixe.", 6.50, [ligeira], [lisboa_vale_tejo], [peixe], [i31_50, i51_mais]).
prato("Dourada", "Dourada, alho, cebola, batata, pimenta, salsa, colorau, vinho branco.", 18.00, [ligeira], [alentejo_algarve], [peixe], [i16_30, i31_50, i51_mais]).

/*pratos ovo*/
prato("Omelete de broculos", "Omelete de ovo recheada com brocolos.",8.00, [geral, ligeira], [norte_centro], [ovo], [i16_30, i31_50]).
prato("Ovos rotos trufados", "Ovos estrelados, batatas fritas e presunto",9.00, [geral, ligeira], [norte_centro, lisboa_vale_tejo], [ovo], [i51_mais]).
prato("Omelete com Queijo Edam e Cogumelos Portobello", 8,45, [geral, ligeira], [lisboa_vale_tejo], [ovo], [i16_30, i31_50]).
prato("Ervilhas com ovos", "", 7.50, [geral, ligeira], [alentejo_algarve], [ovo], [i16_30, i31_50]).
prato("Acorda a Alentejana", "CamarAo, coentros, alho, cebola, sopa de azeite, pao caseiro, ovos, polpa de tomate",12.00, [geral], [alentejo_algarve], [ovo], [i51_mais]).
prato("Favas a moda do Algarve", "Favas, chouriço vermelho, alho, azeite, coentros, toucinho e ovos.",7.50, [ligeira], [alentejo_algarve], [ovo], [i51_mais]).

/*pratos auto-seletivos*/
prato("Mix Vegetariano", "Combinacao de especialidades vegetarianas tipicas.", 9.50, [ovo_lacteo_vegetariano], [norte_centro, lisboa_vale_tejo, alentejo_algarve], [carne, peixe, ovo], [i16_30, i31_50, i51_mais]).
prato("Bowl Vegan", "Trigo Sarraceno, Alface, Lentilhas, Cebola, Maca, Cenoura, Sementes de Chia.", 7.95, [vegano], [norte_centro, lisboa_vale_tejo, alentejo_algarve], [carne, peixe, ovo], [i16_30, i31_50, i51_mais]).
prato("Francesinha", "Bife de alcatra de vitelao, salsicha fresca, linguica, fiambre, mortadela, queijo e molho.", 11.55, [fast_food], [norte_centro, lisboa_vale_tejo, alentejo_algarve], [carne, peixe, ovo], [i16_30, i31_50, i51_mais]).

membro( X, [X|_] ).
membro( X, [_|R] ) :- membro( X, R ).

procuraPrato(A,B,C,D):- findall([X,Y,Z],(prato(X,Y,Z,E,F,G,H), membro(A,E), membro(B,F), membro(C,G), membro(D,H)),I), darPrint(I).
procuraAutoSeletiva(A):- findall([X,Y,Z], (prato(X,Y,Z,E,_,_,_), membro(A,E)),I), darPrint(I).

darPrint(X) :-
X = [A | B],
nl,write(''),nl,
write('         Prato: '),
A = [C | D],
write(C),nl,
write('         Descricao: '),
D = [E | F],
write(E),nl,
write('         Preco: '),
F = [G],
write(G),nl,
nl,
(is_empty(B) -> darPrint(B); write('')).


is_empty(List):- member(_,List).


perfilConsumidor(3):- procuraAutoSeletiva(ovo_lacteo_vegetariano).
perfilConsumidor(4):- procuraAutoSeletiva(vegano).
perfilConsumidor(5):- procuraAutoSeletiva(fast_food).

perfilConsumidor(1):- procuraPrato(geral,norte_centro,carne,i16_30).
perfilConsumidor(2):- procuraPrato(ligeira,norte_centro,carne,i16_30).
perfilConsumidor(1):- procuraPrato(geral,lisboa_vale_tejo,carne,i16_30).
perfilConsumidor(6):- procuraPrato(ligeira,lisboa_vale_tejo,carne,i16_30).
perfilConsumidor(7):- procuraPrato(geral,alentejo_algarve,carne,i16_30).
perfilConsumidor(8):- procuraPrato(ligeira,alentejo_algarve,carne,i16_30).

perfilConsumidor(9):- procuraPrato(geral,norte_centro,peixe,i16_30).
perfilConsumidor(10):- procuraPrato(ligeira,norte_centro,peixe,i16_30).
perfilConsumidor(11):- procuraPrato(geral,lisboa_vale_tejo,peixe,i16_30).
perfilConsumidor(12):- procuraPrato(ligeira,lisboa_vale_tejo,peixe,i16_30).
perfilConsumidor(13):- procuraPrato(geral,alentejo_algarve,peixe,i16_30).
perfilConsumidor(14):- procuraPrato(ligeira,alentejo_algarve,peixe,i16_30).

perfilConsumidor(15):- procuraPrato(geral,norte_centro,ovo,i16_30).
perfilConsumidor(15):- procuraPrato(ligeira,norte_centro,ovo,i16_30).
perfilConsumidor(16):- procuraPrato(geral,lisboa_vale_tejo,ovo,i16_30).
perfilConsumidor(16):- procuraPrato(ligeira,lisboa_vale_tejo,ovo,i16_30).
perfilConsumidor(17):- procuraPrato(geral,alentejo_algarve,ovo,i16_30).
perfilConsumidor(17):- procuraPrato(ligeira,alentejo_algarve,ovo,i16_30).

perfilConsumidor(18):- procuraPrato(geral,norte_centro,carne,i31_50).
perfilConsumidor(2):- procuraPrato(ligeira,norte_centro,carne,i31_50).
perfilConsumidor(19):- procuraPrato(geral,lisboa_vale_tejo,carne,i31_50).
perfilConsumidor(6):- procuraPrato(ligeira,lisboa_vale_tejo,carne,i31_50).
perfilConsumidor(20):- procuraPrato(geral,alentejo_algarve,carne,i31_50).
perfilConsumidor(8):- procuraPrato(ligeira,alentejo_algarve,carne,i31_50).

perfilConsumidor(21):- procuraPrato(geral,norte_centro,peixe,i31_50).
perfilConsumidor(22):- procuraPrato(ligeira,norte_centro,peixe,i31_50).
perfilConsumidor(19):- procuraPrato(geral,lisboa_vale_tejo,peixe,i31_50).
perfilConsumidor(23):- procuraPrato(ligeira,lisboa_vale_tejo,peixe,i31_50).
perfilConsumidor(24):- procuraPrato(geral,alentejo_algarve,peixe,i31_50).
perfilConsumidor(14):- procuraPrato(ligeira,alentejo_algarve,peixe,i31_50).

perfilConsumidor(15):- procuraPrato(geral,norte_centro,ovo,i31_50).
perfilConsumidor(15):- procuraPrato(ligeira,norte_centro,ovo,i31_50).
perfilConsumidor(16):- procuraPrato(geral,lisboa_vale_tejo,ovo,i31_50).
perfilConsumidor(16):- procuraPrato(ligeira,lisboa_vale_tejo,ovo,i31_50).
perfilConsumidor(17):- procuraPrato(geral,alentejo_algarve,ovo,i31_50).
perfilConsumidor(17):- procuraPrato(ligeira,alentejo_algarve,ovo,i31_50).

perfilConsumidor(25):- procuraPrato(geral,norte_centro,carne,i51_mais).
perfilConsumidor(26):- procuraPrato(ligeira,norte_centro,carne,i51_mais).
perfilConsumidor(27):- procuraPrato(geral,lisboa_vale_tejo,carne,i51_mais).
perfilConsumidor(26):- procuraPrato(ligeira,lisboa_vale_tejo,carne,i51_mais).
perfilConsumidor(20):- procuraPrato(geral,alentejo_algarve,carne,i51_mais).
perfilConsumidor(8):- procuraPrato(ligeira,alentejo_algarve,carne,i51_mais).

perfilConsumidor(28):- procuraPrato(geral,norte_centro,peixe,i51_mais).
perfilConsumidor(22):- procuraPrato(ligeira,norte_centro,peixe,i51_mais).
perfilConsumidor(29):- procuraPrato(geral,lisboa_vale_tejo,peixe,i51_mais).
perfilConsumidor(23):- procuraPrato(ligeira,lisboa_vale_tejo,peixe,i51_mais).
perfilConsumidor(24):- procuraPrato(geral,alentejo_algarve,peixe,i51_mais).
perfilConsumidor(14):- procuraPrato(ligeira,alentejo_algarve,peixe,i51_mais).

perfilConsumidor(30):- procuraPrato(geral,norte_centro,ovo,i51_mais).
perfilConsumidor(30):- procuraPrato(ligeira,norte_centro,ovo,i51_mais).
perfilConsumidor(30):- procuraPrato(geral,lisboa_vale_tejo,ovo,i51_mais).
perfilConsumidor(30):- procuraPrato(ligeira,lisboa_vale_tejo,ovo,i51_mais).
perfilConsumidor(31):- procuraPrato(geral,alentejo_algarve,ovo,i51_mais).
perfilConsumidor(32):- procuraPrato(ligeira,alentejo_algarve,ovo,i51_mais).
