% Predicados de las bases ADN
cifrado([0,0], a).
cifrado([0,1], g).
cifrado([1,0], c).
cifrado([1,1], t).

% Regla que descrifra la lista codificada
descifrar([],[]).
descifrar([First,Second|Tail],[Curr|Next]):-
    cifrado([First,Second],Curr),
    descifrar(Tail,Next),!.