% ================================
% 1. Operadores Aritméticos
% ================================

% Ejercicio 1: Cálculo de área y perímetro de un rectángulo
% rectangulo(Base, Altura, [Area, Perimetro]).
rectangulo(B, H, area_perimetro(A, P)) :-
    A is B * H,
    P is 2 * (B + H).

% Ejercicio 2: Número par o impar
par_impar(N) :-
    (N mod 2 =:= 0 -> writeln('Par') ; writeln('Impar')).

% Ejercicio 3: Tabla de multiplicar de un número
tabla_multiplicar(N) :-
    between(1, 10, I),
    R is N * I,
    write(N),write(' x '),write(I),write(' = '),write(R),nl,
    fail. % para cortar el backtracking
tabla_multiplicar(_).
%tabla_multiplicar().   
%format("~w x ~w = ~w~n", [N, I, R]),


% ================================
% 2. Operadores Relacionales
% ================================

% Ejercicio 4: Mayor de dos números
mayor(A, B, M) :- (A >= B -> M = A ; M = B).
mayor_max(A,B,R) :- R is max(A,B).

menor_min(A,B,R) :- R is min(A,B).

% Ejercicio 5: Rango de edad
categoria_edad(E) :-
    (E < 12 -> writeln('Niño') ;
     E < 18 -> writeln('Adolescente') ;
     E < 60 -> writeln('Adulto') ;
     writeln('Adulto mayor')).

% Ejercicio 6: Nota de aprobación (>=6 aprueba)
aprobo(Nota) :- Nota >= 6 -> writeln('Aprobado') ; writeln('Reprobado').


% ================================
% 3. Operadores de Ligadura y Unificación
% ================================

% Ejercicio 7: Unificación de estructuras (hermanos si tienen mismo padre)
padre(juan, ana).
padre(juan, pedro).
padre(maria, sofia).
padre(maria, carlos).

es_hermano(X, Y) :-
    padre(P, X), padre(P, Y), X \== Y.

% Ejercicio 8: Comparación estricta (=, ==, \==)
comparacion(X, Y) :-
    (X = Y    -> format("= : ~w y ~w unifican~n", [X, Y]) ; true),
    (X == Y   -> format("== : ~w y ~w son idénticos~n", [X, Y]) ; true),
    (X \== Y  -> format("\\== : ~w y ~w son distintos~n", [X, Y]) ; true).

% Ejercicio 9: Juego de colores
color_equipo(rojo)   :- writeln('Equipo A'), !. % corta backtracking
color_equipo(azul)   :- writeln('Equipo B'), fail. % fuerza backtracking
color_equipo(verde)  :- writeln('Equipo C').
color_equipo(_)      :- writeln('Color desconocido').


% ================================
% 4. Funciones Aritméticas Predefinidas
% ================================

% Ejercicio 10: Distancia entre dos puntos (x1, y1) y (x2, y2)
distancia(X1, Y1, X2, Y2, D) :-
    DX is X2 - X1, DY is Y2 - Y1,
    D is sqrt(DX*DX + DY*DY).

% Ejercicio 11: Conversión de grados a radianes
grados_a_radianes(G, R) :-
    R is G * pi / 180.

% Ejercicio 12: Promedios y extremos
analisis(A, B, [Prom, Max, Min]) :-
    Prom is (A + B) / 2,
    Max is max(A, B),
    Min is min(A, B).

% Ejercicio 13: Estadísticas con funciones
estadisticas(N) :-
    format("abs(~w) = ~w~n", [N, abs(N)]),
    format("round(~w) = ~w~n", [N, round(N)]),
    format("floor(~w) = ~w~n", [N, floor(N)]),
    format("ceiling(~w) = ~w~n", [N, ceiling(N)]).


% ================================
% 5. Desafíos Integradores
% ================================

% Ejercicio 14: Calculadora sencilla
% calculadora(Operacion, A, B, Resultado).
calculadora(suma, A, B, R) :- R is A + B.
calculadora(resta, A, B, R) :- R is A - B.
calculadora(multiplicar, A, B, R) :- R is A * B.
calculadora(dividir, A, B, R) :- B =\= 0, R is A / B.

% Ejercicio 15: Hipotenusa de un triángulo rectángulo
hipotenusa(A, B, H) :-
    H is sqrt(A*A + B*B).

% Ejercicio 16: Sistema de calificaciones
% nota_maxima, nota_minima y promedio de una lista
notas_info(Lista, Max, Min, Prom) :-
    max_list(Lista, Max),
    min_list(Lista, Min),
    sum_list(Lista, Suma),
    length(Lista, N),
    Prom is Suma / N.
