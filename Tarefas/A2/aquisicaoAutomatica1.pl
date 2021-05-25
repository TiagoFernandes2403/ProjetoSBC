/*
David  - l7 a l60
Gonçalo  - l62 a l106
Pedro  - l108 a l152
*/
:-[preprocess], dynamic(example/2),dynamic(data/1).

%atributos input
attribute(faixa, [i16_30, i31_50, i51_mais]).
attribute(dieta, [geral, ligeira, ovo_lacteo_vegetariana, vegana, fast_food]).
attribute(zona, [norte_centro, lisboa_vale_tejo, alentejo_algarve]).
attribute(proteina, [carne, peixe, ovo]).

%exemplos dados CSV type
data([i16_30, geral, norte_centro, carne, 1]).
data([i16_30, ligeira, norte_centro, carne, 2]).
data([i16_30, ovo_lacteo_vegetariana, norte_centro, carne, 3]).
data([i16_30, vegana, norte_centro, carne, 4]).
data([i16_30, fast_food, norte_centro, carne, 5]).
data([i16_30, geral, lisboa_vale_tejo, carne, 1]).
data([i16_30, ligeira, lisboa_vale_tejo, carne, 6]).
data([i16_30, ovo_lacteo_vegetariana, lisboa_vale_tejo, carne, 3]).
data([i16_30, vegana, lisboa_vale_tejo, carne, 4]).
data([i16_30, fast_food, lisboa_vale_tejo, carne, 5]).
data([i16_30, geral, alentejo_algarve, carne, 7]).
data([i16_30, ligeira, alentejo_algarve, carne, 8]).
data([i16_30, ovo_lacteo_vegetariana, alentejo_algarve, carne, 3]).
data([i16_30, vegana, alentejo_algarve, carne, 4]).
data([i16_30, fast_food, alentejo_algarve, carne, 5]).
data([i16_30, geral, norte_centro, peixe, 9]).
data([i16_30, ligeira, norte_centro, peixe, 10]).
data([i16_30, ovo_lacteo_vegetariana, norte_centro, peixe, 3]).
data([i16_30, vegana, norte_centro, peixe, 4]).
data([i16_30, fast_food, norte_centro, peixe, 5]).
data([i16_30, geral, lisboa_vale_tejo, peixe, 11]).
data([i16_30, ligeira, lisboa_vale_tejo, peixe, 12]).
data([i16_30, ovo_lacteo_vegetariana, lisboa_vale_tejo, peixe, 3]).
data([i16_30, vegana, lisboa_vale_tejo, peixe, 4]).
data([i16_30, fast_food, lisboa_vale_tejo, peixe, 5]).
data([i16_30, geral, alentejo_algarve, peixe, 13]).
data([i16_30, ligeira, alentejo_algarve, peixe, 14]).
data([i16_30, ovo_lacteo_vegetariana, alentejo_algarve, peixe, 3]).
data([i16_30, vegana, alentejo_algarve, peixe, 4]).
data([i16_30, fast_food, alentejo_algarve, peixe, 5]).
data([i16_30, geral, norte_centro, ovo, 15]).
data([i16_30, ligeira, norte_centro, ovo, 15]).
data([i16_30, ovo_lacteo_vegetariana, norte_centro, ovo, 3]).
data([i16_30, vegana, norte_centro, ovo, 4]).
data([i16_30, fast_food, norte_centro, ovo, 5]).
data([i16_30, geral, lisboa_vale_tejo, ovo, 16]).
data([i16_30, ligeira, lisboa_vale_tejo, ovo, 16]).
data([i16_30, ovo_lacteo_vegetariana, lisboa_vale_tejo, ovo, 3]).
data([i16_30, vegana, lisboa_vale_tejo, ovo, 4]).
data([i16_30, fast_food, lisboa_vale_tejo, ovo, 5]).
data([i16_30, geral, alentejo_algarve, ovo, 17]).
data([i16_30, ligeira, alentejo_algarve, ovo, 17]).
data([i16_30, ovo_lacteo_vegetariana, alentejo_algarve, ovo, 3]).
data([i16_30, vegana, alentejo_algarve, ovo, 4]).
data([i16_30, fast_food, alentejo_algarve, ovo, 5]).

data([i31_50, geral, norte_centro, carne, 18]).
data([i31_50, ligeira, norte_centro, carne, 2]).
data([i31_50, ovo_lacteo_vegetariana, norte_centro, carne, 3]).
data([i31_50, vegana, norte_centro, carne, 4]).
data([i31_50, fast_food, norte_centro, carne, 5]).
data([i31_50, geral, lisboa_vale_tejo, carne, 19]).
data([i31_50, ligeira, lisboa_vale_tejo, carne, 6]).
data([i31_50, ovo_lacteo_vegetariana, lisboa_vale_tejo, carne, 3]).
data([i31_50, vegana, lisboa_vale_tejo, carne, 4]).
data([i31_50, fast_food, lisboa_vale_tejo, carne, 5]).
data([i31_50, geral, alentejo_algarve, carne, 20]).
data([i31_50, ligeira, alentejo_algarve, carne, 8]).
data([i31_50, ovo_lacteo_vegetariana, alentejo_algarve, carne, 3]).
data([i31_50, vegana, alentejo_algarve, carne, 4]).
data([i31_50, fast_food, alentejo_algarve, carne, 5]).
data([i31_50, geral, norte_centro, peixe, 21]).
data([i31_50, ligeira, norte_centro, peixe, 22]).
data([i31_50, ovo_lacteo_vegetariana, norte_centro, peixe, 3]).
data([i31_50, vegana, norte_centro, peixe, 4]).
data([i31_50, fast_food, norte_centro, peixe, 5]).
data([i31_50, geral, lisboa_vale_tejo, peixe, 11]).
data([i31_50, ligeira, lisboa_vale_tejo, peixe, 23]).
data([i31_50, ovo_lacteo_vegetariana, lisboa_vale_tejo, peixe, 3]).
data([i31_50, vegana, lisboa_vale_tejo, peixe, 4]).
data([i31_50, fast_food, lisboa_vale_tejo, peixe, 5]).
data([i31_50, geral, alentejo_algarve, peixe, 24]).
data([i31_50, ligeira, alentejo_algarve, peixe, 14]).
data([i31_50, ovo_lacteo_vegetariana, alentejo_algarve, peixe, 3]).
data([i31_50, vegana, alentejo_algarve, peixe, 4]).
data([i31_50, fast_food, alentejo_algarve, peixe, 5]).
data([i31_50, geral, norte_centro, ovo, 15]).
data([i31_50, ligeira, norte_centro, ovo, 15]).
data([i31_50, ovo_lacteo_vegetariana, norte_centro, ovo, 3]).
data([i31_50, vegana, norte_centro, ovo, 4]).
data([i31_50, fast_food, norte_centro, ovo, 5]).
data([i31_50, geral, lisboa_vale_tejo, ovo, 16]).
data([i31_50, ligeira, lisboa_vale_tejo, ovo, 16]).
data([i31_50, ovo_lacteo_vegetariana, lisboa_vale_tejo, ovo, 3]).
data([i31_50, vegana, lisboa_vale_tejo, ovo, 4]).
data([i31_50, fast_food, lisboa_vale_tejo, ovo, 5]).
data([i31_50, geral, alentejo_algarve, ovo, 17]).
data([i31_50, ligeira, alentejo_algarve, ovo, 17]).
data([i31_50, ovo_lacteo_vegetariana, alentejo_algarve, ovo, 3]).
data([i31_50, vegana, alentejo_algarve, ovo, 4]).
data([i31_50, fast_food, alentejo_algarve, ovo, 5]).

data([i51_mais, geral, norte_centro, carne, 25]).
data([i51_mais, ligeira, norte_centro, carne, 26]).
data([i51_mais, ovo_lacteo_vegetariana, norte_centro, carne, 3]).
data([i51_mais, vegana, norte_centro, carne, 4]).
data([i51_mais, fast_food, norte_centro, carne, 5]).
data([i51_mais, geral, lisboa_vale_tejo, carne, 27]).
data([i51_mais, ligeira, lisboa_vale_tejo, carne, 26]).
data([i51_mais, ovo_lacteo_vegetariana, lisboa_vale_tejo, carne, 3]).
data([i51_mais, vegana, lisboa_vale_tejo, carne, 4]).
data([i51_mais, fast_food, lisboa_vale_tejo, carne, 5]).
data([i51_mais, geral, alentejo_algarve, carne, 20]).
data([i51_mais, ligeira, alentejo_algarve, carne, 8]).
data([i51_mais, ovo_lacteo_vegetariana, alentejo_algarve, carne, 3]).
data([i51_mais, vegana, alentejo_algarve, carne, 4]).
data([i51_mais, fast_food, alentejo_algarve, carne, 5]).
data([i51_mais, geral, norte_centro, peixe, 28]).
data([i51_mais, ligeira, norte_centro, peixe, 22]).
data([i51_mais, ovo_lacteo_vegetariana, norte_centro, peixe, 3]).
data([i51_mais, vegana, norte_centro, peixe, 4]).
data([i51_mais, fast_food, norte_centro, peixe, 5]).
data([i51_mais, geral, lisboa_vale_tejo, peixe, 29]).
data([i51_mais, ligeira, lisboa_vale_tejo, peixe, 23]).
data([i51_mais, ovo_lacteo_vegetariana, lisboa_vale_tejo, peixe, 3]).
data([i51_mais, vegana, lisboa_vale_tejo, peixe, 4]).
data([i51_mais, fast_food, lisboa_vale_tejo, peixe, 5]).
data([i51_mais, geral, alentejo_algarve, peixe, 24]).
data([i51_mais, ligeira, alentejo_algarve, peixe, 14]).
data([i51_mais, ovo_lacteo_vegetariana, alentejo_algarve, peixe, 3]).
data([i51_mais, vegana, alentejo_algarve, peixe, 4]).
data([i51_mais, fast_food, alentejo_algarve, peixe, 5]).
data([i51_mais, geral, norte_centro, ovo, 30]).
data([i51_mais, ligeira, norte_centro, ovo, 30]).
data([i51_mais, ovo_lacteo_vegetariana, norte_centro, ovo, 3]).
data([i51_mais, vegana, norte_centro, ovo, 4]).
data([i51_mais, fast_food, norte_centro, ovo, 5]).
data([i51_mais, geral, lisboa_vale_tejo, ovo, 30]).
data([i51_mais, ligeira, lisboa_vale_tejo, ovo, 30]).
data([i51_mais, ovo_lacteo_vegetariana, lisboa_vale_tejo, ovo, 3]).
data([i51_mais, vegana, lisboa_vale_tejo, ovo, 4]).
data([i51_mais, fast_food, lisboa_vale_tejo, ovo, 5]).
data([i51_mais, geral, alentejo_algarve, ovo, 31]).
data([i51_mais, ligeira, alentejo_algarve, ovo, 32]).
data([i51_mais, ovo_lacteo_vegetariana, alentejo_algarve, ovo, 3]).
data([i51_mais, vegana, alentejo_algarve, ovo, 4]).
data([i51_mais, fast_food, alentejo_algarve, ovo, 5]).

%criacao novo file
createfile:- 
	preprocess, % build all examples
	tell('aquisicaoAutomatica2.pl'),
        listing(attribute/2),
        listing(example/2),
        told.