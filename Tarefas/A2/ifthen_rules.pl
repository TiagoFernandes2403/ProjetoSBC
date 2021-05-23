:- dynamic (if)/1.

if dieta_geral and faixa_i16_30 and proteina_carne and zona_norte_centro then 1.
if dieta_geral and faixa_i16_30 and proteina_carne and zona_lisboa_vale_tejo then 1.
if dieta_ligeira and zona_norte_centro and proteina_carne and faixa_i16_30 then 2.
if dieta_ligeira and zona_norte_centro and proteina_carne and faixa_i31_50 then 2.
if dieta_ovo_lacteo_vegetariana then 3.
if dieta_vegana then 4.
if dieta_fast_food then 5.
if dieta_ligeira and zona_lisboa_vale_tejo and proteina_carne and faixa_i16_30 then 6.
if dieta_ligeira and zona_lisboa_vale_tejo and proteina_carne and faixa_i31_50 then 6.
if dieta_geral and faixa_i16_30 and zona_alentejo_algarve and proteina_carne then 7.
if dieta_ligeira and zona_alentejo_algarve and proteina_carne then 8.
if dieta_geral and faixa_i16_30 and zona_norte_centro and proteina_peixe then 9.
if dieta_ligeira and faixa_i16_30 and zona_norte_centro and proteina_peixe then 10.
if dieta_geral and zona_lisboa_vale_tejo and proteina_peixe and faixa_i16_30 then 11.
if dieta_geral and zona_lisboa_vale_tejo and proteina_peixe and faixa_i31_50 then 11.
if dieta_ligeira and faixa_i16_30 and zona_lisboa_vale_tejo and proteina_peixe then 12.
if dieta_geral and faixa_i16_30 and zona_alentejo_algarve and proteina_peixe then 13.
if dieta_ligeira and zona_alentejo_algarve and proteina_peixe then 14.
if zona_norte_centro and proteina_ovo and dieta_geral and faixa_i16_30 then 15.
if dieta_ligeira and zona_norte_centro and proteina_ovo and faixa_i16_30 then 15.
if dieta_geral and zona_norte_centro and proteina_ovo and faixa_i31_50 then 15.
if dieta_ligeira and zona_norte_centro and proteina_ovo and faixa_i31_50 then 15.
if zona_lisboa_vale_tejo and proteina_ovo and dieta_geral and faixa_i16_30 then 16.
if dieta_ligeira and zona_lisboa_vale_tejo and proteina_ovo and faixa_i16_30 then 16.
if dieta_geral and zona_lisboa_vale_tejo and proteina_ovo and faixa_i31_50 then 16.
if dieta_ligeira and zona_lisboa_vale_tejo and proteina_ovo and faixa_i31_50 then 16.
if zona_alentejo_algarve and proteina_ovo and dieta_geral and faixa_i16_30 then 17.
if dieta_ligeira and zona_alentejo_algarve and proteina_ovo and faixa_i16_30 then 17.
if dieta_geral and zona_alentejo_algarve and proteina_ovo and faixa_i31_50 then 17.
if dieta_ligeira and zona_alentejo_algarve and proteina_ovo and faixa_i31_50 then 17.
if dieta_geral and faixa_i31_50 and zona_norte_centro and proteina_carne then 18.
if dieta_geral and faixa_i31_50 and zona_lisboa_vale_tejo and proteina_carne then 19.
if dieta_geral and zona_alentejo_algarve and proteina_carne and faixa_i31_50 then 20.
if dieta_geral and zona_alentejo_algarve and proteina_carne and faixa_i51_mais then 20.
if dieta_geral and faixa_i31_50 and zona_norte_centro and proteina_peixe then 21.
if dieta_ligeira and zona_norte_centro and proteina_peixe and faixa_i31_50 then 22.
if dieta_ligeira and zona_norte_centro and proteina_peixe and faixa_i51_mais then 22.
if dieta_ligeira and zona_lisboa_vale_tejo and proteina_peixe and faixa_i31_50 then 23.
if dieta_ligeira and zona_lisboa_vale_tejo and proteina_peixe and faixa_i51_mais then 23.
if dieta_geral and zona_alentejo_algarve and proteina_peixe and faixa_i31_50 then 24.
if dieta_geral and zona_alentejo_algarve and proteina_peixe and faixa_i51_mais then 24.
if dieta_geral and faixa_i51_mais and zona_norte_centro and proteina_carne then 25.
if dieta_ligeira and faixa_i51_mais and proteina_carne and zona_norte_centro then 26.
if dieta_ligeira and faixa_i51_mais and proteina_carne and zona_lisboa_vale_tejo then 26.
if dieta_geral and faixa_i51_mais and zona_lisboa_vale_tejo and proteina_carne then 27.
if dieta_geral and faixa_i51_mais and zona_norte_centro and proteina_peixe then 28.
if dieta_geral and faixa_i51_mais and zona_lisboa_vale_tejo and proteina_peixe then 29.
if faixa_i51_mais and proteina_ovo and dieta_geral and zona_norte_centro then 30.
if dieta_ligeira and faixa_i51_mais and proteina_ovo and zona_norte_centro then 30.
if dieta_geral and faixa_i51_mais and proteina_ovo and zona_lisboa_vale_tejo then 30.
if dieta_ligeira and faixa_i51_mais and proteina_ovo and zona_lisboa_vale_tejo then 30.
if dieta_geral and faixa_i51_mais and zona_alentejo_algarve and proteina_ovo then 31.
if dieta_ligeira and faixa_i51_mais and zona_alentejo_algarve and proteina_ovo then 32.

