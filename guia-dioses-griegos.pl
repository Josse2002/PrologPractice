% ================================
% Hechos
% ================================

personaje(zeus). personaje(poseidon). personaje(hades).
personaje(atenea). personaje(hermes). personaje(ares).
personaje(afrodita). personaje(perseo). personaje(heracles).
personaje(medusa).

dios(zeus). dios(poseidon). dios(hades).
dios(atenea). dios(hermes). dios(ares). dios(afrodita).

mortal(perseo). mortal(heracles). mortal(medusa).

heroe(perseo). heroe(heracles).

hijo_de(perseo, zeus).
hijo_de(heracles, zeus).

enfrenta(perseo, medusa).
enfrenta(heracles, leon_de_nemea).
enfrenta(heracles, hidra_de_lerna).

ayuda_a(atenea, perseo).
ayuda_a(hermes, perseo).
ayuda_a(atenea, heracles).

posee(perseo, espada_magica).
posee(heracles, fuerza_sobrehumana).

lugar(zeus, olimpo).
lugar(hades, inframundo).
lugar(poseidon, mar).

1. :- (si, “implicación” o “definición de regla”)

Se usa para definir reglas: cabeza :- cuerpo significa “l
a cabeza es verdadera si el cuerpo es verdadero”.

%1. :- (si, “implicación” o “definición de regla”)
%Se usa para definir reglas: cabeza :- cuerpo significa “la cabeza es verdadera si el cuerpo es verdadero”.

%2. , (conjunción lógica = “y”)
%Se usa para decir que varias condiciones deben cumplirse a la vez.

%3. ; (disyunción lógica = “o”)
%Se usa para expresar alternativas.

%4. = (ligadura / unificación)
%Une un valor con una variable, aunque no evalúa expresiones.

%5. is (evaluación aritmética)
%Se usa para calcular expresiones numéricas.



