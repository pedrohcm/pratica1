deletaPrimeiro(X, [], []).
deletaPrimeiro(X, [X|C], C).
deletaPrimeiro(X, [Y|C], [Y|D]) :- deletaPrimeiro(X, C, D).

:- initialization(main).

main:- 
	read(X),
	read(Y),
	deletaPrimeiro(Y,X,Z),
	write(Z),nl,
	halt(0).
