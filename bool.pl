% Hechos 
calificacion(jose, 5, 3, 8). % Nombre, Nota, Nota 2, Nota 3
calificacion(maria, 8, 6, 10).

% Reglas
promedio(Nombre, Promedio) :-
    calificacion(Nombre, Nota1, Nota2, Nota3) ,
    Promedio is (Nota1 + Nota2 + Nota3) / 3.

paso_o_no(Nombre, Resultado) :-
    promedio(Nombre, Promedio),
    (
        P >= 6  -> Resultado = aprobado ;
        Resultado = reprobado
    ).