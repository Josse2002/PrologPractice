 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % familia.pl - Solución de la Actividad de Repaso
 % Historia extendida de Valle Verde
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%%%%%%%%%%%
 % Hechos
 %%%%%%%%%%%%%%
 % Matrimonios
 casado_con(ernesto, teresa).
 casado_con(teresa, ernesto).
 casado_con(carlos, sofia).
 casado_con(sofia, carlos).
 casado_con(ricardo, laura).
 casado_con(laura, ricardo).
 casado_con(miguel, rosa).
 casado_con(rosa, miguel).
 % Padres e hijos
 padre(ernesto, carlos).
 padre(ernesto, ana).
 padre(ernesto, lucia).
 madre(teresa, carlos).
 madre(teresa, ana).
 madre(teresa, lucia).
 padre(carlos, mateo).
 padre(carlos, valeria).
 madre(sofia, mateo).
 madre(sofia, valeria).
 madre(ana, andres).
 padre(ricardo, daniel).
 madre(laura, daniel).
 padre(miguel, fernanda).
 madre(rosa, fernanda).
 % Lugares
 vive_en(ernesto, valle_verde).
 vive_en(teresa, valle_verde).
 vive_en(ana, valle_verde).
 vive_en(miguel, valle_verde).
 vive_en(rosa, valle_verde).
 vive_en(carlos, capital).
vive_en(sofia, capital).
 vive_en(mateo, capital).
 vive_en(valeria, capital).
 vive_en(ricardo, capital).
 vive_en(laura, capital).
 vive_en(daniel, capital).
 vive_en(lucia, capital).
 vive_en(fernanda, capital). % universitaria
 % Profesiones
 trabaja_en(ernesto, maestro).
 trabaja_en(teresa, enfermera).
 trabaja_en(carlos, ingeniero_civil).
 trabaja_en(sofia, arquitecta).
 trabaja_en(ana, profesora).
 trabaja_en(lucia, estudiante_medicina).
 trabaja_en(ricardo, abogado).
 trabaja_en(laura, bibliotecaria).
 trabaja_en(miguel, agricultor).
 trabaja_en(rosa, comerciante).
 trabaja_en(fernanda, estudiante_biologia).
 trabaja_en(andres, estudiante_musica).
 trabaja_en(daniel, estudiante).
 trabaja_en(mateo, estudiante).
 trabaja_en(valeria, estudiante).
 % Amistades
 amigo(carlos, ricardo).
 amigo(ricardo, carlos).
 amigo(mateo, daniel).
 amigo(daniel, mateo).
 amigo(andres, joaquin).
 amigo(joaquin, andres).
 %%%%%%%%%%%%%%
 % Reglas
 %%%%%%%%%%%%%%
 % Hermano/a
 hermano(X,Y) :- padre(P,X), padre(P,Y), X \= Y.
 hermana(X,Y) :- madre(M,X), madre(M,Y), X \= Y.
 % Abuelo/a
 abuelo(X,Y) :- padre(X,Z), padre(Z,Y).
 abuelo(X,Y) :- padre(X,Z), madre(Z,Y).
 abuela(X,Y) :- madre(X,Z), padre(Z,Y).
 abuela(X,Y) :- madre(X,Z), madre(Z,Y).
 % Tío/a
 tio(X,Y) :- hermano(X,Padre), padre(Padre,Y).
 tio(X,Y) :- hermano(X,Madre), madre(Madre,Y).
 tia(X,Y) :- hermana(X,Padre), padre(Padre,Y).
 tia(X,Y) :- hermana(X,Madre), madre(Madre,Y).
% Primos
 primo(X,Y) :- padre(P1,X), padre(P2,Y), hermano(P1,P2), X \= Y.
 primo(X,Y) :- madre(M1,X), madre(M2,Y), hermana(M1,M2), X \= Y.
 % Amigo de primo
 amigo_de_primo(X,Y) :- primo(Z,Y), amigo(X,Z).
 % Paridad
 es_par(N) :- 0 is N mod 2.
 %%%%%%%%%%%%%%
 % Consultas de ejemplo
 %%%%%%%%%%%%%%
 % ?- padre(ernesto, Hijo).
 % Hijo = carlos ; Hijo = ana ; Hijo = lucia.
 % ?- abuelo(ernesto, mateo).
 % true.
 % ?- hermano(carlos, ana).
 % true.
 % ?- madre(M, _).
 % M = teresa ; M = sofia ; M = ana ; M = laura ; M = rosa.
 % ?- amigo(mateo, daniel).
 % true.
 % ?- primo(andres, fernanda).
 % true.
 % ?- not(padre(_, fernanda)).
 % false (sí tiene padre: miguel).
 % ?- vive_en(Persona, Lugar).
 % Persona = ernesto, Lugar = valle_verde ;
 % Persona = teresa, Lugar = valle_verde ;
 % Persona = ana, Lugar = valle_verde ;
 % Persona = miguel, Lugar = valle_verde ;
 % Persona = rosa, Lugar = valle_verde ;
 % Persona = carlos, Lugar = capital ;
 