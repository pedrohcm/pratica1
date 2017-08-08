somaElementos([],0).
somaElementos([A|B],Y) :- somaElementos(B,Y1), Y is A+Y1.

retiraDuplicatasLista([],[]).
retiraDuplicatasLista([X|Y],[X|Z]) :- retiraDuplicatasElemento(X,Y,L),
	retiraDuplicatasLista(L,Z).

retiraDuplicatasElemento(_,[],[]).
retiraDuplicatasElemento(X,[X|Y],L) :- retiraDuplicatasElemento(X,Y,L).
retiraDuplicatasElemento(X,[Z|Y],[Z|W]) :- X =\= Z,
	retiraDuplicatasElemento(X,Y,W).

:- initialization(main).

main:-
	read(X),
	retiraDuplicatasLista(X,Y),
	somaElementos(Y,Z),
	write(Z),nl,
	halt(0).
