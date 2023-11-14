% Contraseña
cerradura(1,4,5,1,0).

% Regla que evalua dos números y devuelve un contador
eval(X,Y,C,C1):- X=Y, C1 is C.
eval(_,_,C,C1):- C1 is C+1.

% Regla que define cuantas cifras coinciden con la contraseña
verificar(X1,X2,X3,X4,X5,R):-
    cerradura(L1,L2,L3,L4,L5),
    eval(X1,L1,0,C1),
    eval(X2,L2,C1,C2),
    eval(X3,L3,C2,C3),
    eval(X4,L4,C3,C4),
    eval(X5,L5,C4,C5),
    C5=0,R="Contraseña descubierta",!.
verificar(X1,X2,X3,X4,X5,R):-
    cerradura(L1,L2,L3,L4,L5),
    eval(X1,L1,0,C1),
    eval(X2,L2,C1,C2),
    eval(X3,L3,C2,C3),
    eval(X4,L4,C3,C4),
    eval(X5,L5,C4,C5),
    R is 5-C5,!.