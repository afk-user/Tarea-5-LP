% Contraseña
cerradura(1,4,5,1,0).

% Regla que evalua el contador de coincidencias
eval(E,R):-E=0,!,R="Contraseña descubierta".
eval(E,R):-E<1,!,R="Cerca".
eval(E,R):-E>=1,R="Lejos".

% Regla que evalua las coincidencias y retorna una respuesta en palabra
verificar(X1,X2,X3,X4,X5,R):-
    cerradura(L1,L2,L3,L4,L5),
    DX1 is abs(X1-L1),
    DX2 is abs(X2-L2),
    DX3 is abs(X3-L3),
    DX4 is abs(X4-L4),
    DX5 is abs(X5-L5),
    E is (DX1+DX2+DX3+DX4+DX5)/5,
    eval(E,R).