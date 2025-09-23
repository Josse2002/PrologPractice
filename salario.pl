% Hechos
empleado(ana, 40, 15). % nombre, horas trabajadas, pago por horas
empleado(juan, 50, 20).
empleado(pedro, 30, 12).

% Reglas
% Calculando el salario bruto

salario_bruto(Nombre, Bruto) :- empleado(Nombre, Horas, PagoHora) , Bruto is Horas * PagoHora.

% Calculando impuestos usando division Reglas
impuesto(Nombre, Impuesto) :- salario_bruto(Nombre, Bruto) , Impuesto is Bruto * 0.16.

% Bonificacion por horas extras
bonificacion(Nombre, Bono) :- empleado(Nombre, Horas, _),
     Horas > 45 , 
     Extras is Horas - 45 , 
     Bono is Extras * 5

% Salario Neto es el salario bruto menos impuestos mas bonificaciones
salario_neto(Nombre, Neto) :-
    salario_bruto(Nombre, Bruto),
    impuesto(Nombre, Imp),
    bonificacion(Nombre, Bono),
    Neto is Bruto - Imp + Bono.

% Convertir horas trabajadas en dias y horas restantes, considerando un dia laboral de 8 horas
horas_en_dias(Nombre, Dias, HorasRestantes) :-
    empleado(Nombre, Horas, _),
    Dias is Horas div 8, 
    HorasRestantes is Horas mod 8.