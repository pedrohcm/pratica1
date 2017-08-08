passaro(joao).
peixe(pedro).
minhoca(maria).
gato(miau).
pessoa(eu).

gosta(eu, miau).

gosta(X, Y) :- passaro(X), minhoca(Y).
gosta(X, Y) :- gato(X), peixe(Y).
gosta(X, Y) :- gato(X), passaro(Y).
amigo(X, Y) :- gosta(X, Y), gosta(Y, X).
come(X, Y) :- amigo(X, Y).
come(X, Y) :- gato(X), gosta(X, Y).
