velocidade(fusca, 4010).
velocidade(corolla, 8475).
velocidade(bmw, 421).
velocidade(golzinho, 685).

tempo(fusca, 2).
tempo(corolla, 10).
tempo(bmw, 1).
tempo(golzinho, 60).

distancia(fusca,R) :- velocidade(fusca,X),tempo(fusca,Y), R is X/Y.
