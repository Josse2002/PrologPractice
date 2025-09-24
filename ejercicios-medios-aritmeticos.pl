%swipl -s "C:\Users\crist\OneDrive\Desktop\PrologPractice\ejercicios-medios-aritmeticos.pl"
%halt.

calificaciones_stats([], 0, 0, 0) :- !.
calificaciones_stats(List, Max, Min, Prom) :-
    max_list(List, Max),
    min_list(List, Min),
    sum_list(List, Sum),
    length(List, L),
    L > 0,
    Prom is Sum / L.
%calificaciones_stats([10,70,85,90,60], Max, Min, Prom).

calculadora(A, +, B, R) :- R is A + B.
calculadora(A, -, B, R) :- R is A - B.
calculadora(A, *, B, R) :- R is A * B.
calculadora(A, /, B, R) :- B =\= 0, R is A / B.
calculadora(A, mod, B, R) :- integer(A), integer(B), B =\= 0, R is A mod B.
calculadora(A, pow, B, R) :- R is A ** B.
calculadora(A, mod, B, R) :- R is A mod B.
%calculadora(10, +, 5, R)

hipotenusa(A, B, H) :-
    H2 is A*A + B*B,
    H is sqrt(H2).
%hipotenusa(3,4,H).

%?- A is abs(-5).
%A = 5.
%?- R is round(3.6).
%R = 4.
%?- F is floor(3.9).
%F = 3.
%?- C is ceiling(3.1).
%C = 4.

%analisis([], 0, min_max(_, _)) :- !.  % caso vacío (puedes ajustar comportamiento)
analisis(List, Prom, min_max(Min, Max)) :-
    sum_list(List, Sum),
    length(List, Len),
    Len > 0,
    Prom is Sum / Len,
    min_list(List, Min),
    max_list(List, Max).
% Helpers usando predicados de librería (SWI-Prolog): sum_list/2, min_list/2, max_list/2

grados_a_radianes(Grados, Radianes) :-
    Radianes is Grados * pi / 180.
% grados_a_radianes(180, R).

distancia(X1, Y1, X2, Y2, D) :-
    DX is X2 - X1,
    DY is Y2 - Y1,
    Dsq is DX*DX + DY*DY,
    D is sqrt(Dsq).

% distancia(0,0,3,4,D).
