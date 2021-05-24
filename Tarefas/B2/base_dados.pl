%lucro(cliente, valor)
lucro(restaurante, 0).
lucro(cliente1, 5).
lucro(cliente2, 6).
lucro(cliente3, 7).
lucro(cliente4, 5).
lucro(cliente5, 7).


%road(Origem, Destino, duracaoEmMin)
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
