notas(joao, 5.0, 7.0, 8.0).
notas(maria, 6.0, 6.0, 6.0).
notas(joana, 8.0, 5.1, 10).
notas(mariana, 9.0, 9.0, 3.0).
notas(cleuza, 8.5, 7.0, 8.6).
notas(jose, 3.5, 3.0, 2.0).
notas(mary, 10.0, 8.0, 7.0).

media(reprovado, 0.0, 3.9).
media(final, 4.0, 6.9).
media(aprovado, 7.0, 10).

media(ALUNO, MEDIA) :- notas(ALUNO, NOTA1, NOTA2, NOTA3),
	MEDIA is ((NOTA1 + NOTA2 + NOTA3) / 3.0).

situacao(MEDIA, X) :- media(X, A, B), 
	MEDIA >= A,
	MEDIA =< B.
	
:- initialization main.

main :-
	read(ALUNO),
	media(ALUNO, Y),
	situacao(Y, Z),
	write(Z),nl,
	halt(0).
