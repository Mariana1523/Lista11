
mae(geraldo, maria).
mae(sonia, maria).
mae(sandra, efigenia).
mae(soraia, efigenia).
mae(geraldo, maria).
mae(mariana, sandra).
mae(caio, sandra).
mae(marcela, soraia).
mae(arthur, sonia).

pai(geraldo, raimundo).
pai(sonia, raimundo).
pai(sandra, joao).
pai(soraia, joao).
pai(mariana, geraldo).
pai(caio, geraldo).


avoPaterno(X,Z)   :- pai(X,Y), pai(Y,Z).
avoPaterna(X,Z)	  :- pai(X,Y), mae(Y,Z).

avoMaterno(X,Z)    :- mae(X,Y), pai(Y,Z).
avoMaterna(X,Z)    :- mae(X,Y), mae(Y,Z).

avosMaternos(X,Y,Z) :-avoMaterno(X,Y),
    				  avoMaterna(X,Z).

avosPaternos(X,Y,Z) :-avoPaterno(X,Y),
    				  avoPaterna(X,Z).

irmaos(X, Y) :-  pais(X, M, P),
                 pais(Y, M, P),
    			 X\==Y.


pais(X, M, P) :- mae(X, M),
			     pai(X, P).

primos(X, Y) :- mae(Y,Z), 
    		    mae(X,W), 
    		 	irmaos(Z,W),
    			Z\==W.

tios(X,Y) :-  mae(X,M),
    		  irmaos(Y,M),
    		  M\==Y.

