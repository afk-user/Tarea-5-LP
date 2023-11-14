% ruta principal
sigue(p1,p2).
sigue(p2,p3).
sigue(p3,p4).
sigue(p4,p5).
sigue(p5,p6).
sigue(p6,p7).
sigue(p7,p8).
sigue(p8,p1).

% rutas secundarias
sigue(p1,p9).
sigue(p9,p10).
sigue(p10,p11).
sigue(p11,p12).
sigue(p12,p13).
sigue(p13,p14).

sigue(p1,p15).
sigue(p15,p16).
sigue(p16,p20).
sigue(p20,p21).
sigue(p21,p22).

sigue(p7,p17).
sigue(p17,p18).
sigue(p18,p19).

% Regla que permite calcular el largo de una lista
largo([],0).
largo([_|Cola],N):-
    largo(Cola,N1),
    N is N1+1.

% Regla que define cual es el nodo anterior a otro nodo (funciona de forma recursiva)
anterior(Curr,Old,New):-
    member(Curr,Old),
    New=Old,!.
anterior(Curr,Old,New):-
    sigue(Prev,Curr),
    append(Old,[Curr],Temp),
    anterior(Prev,Temp,New),!.

% Regla que define el algoritmo para saber si un nodo está en la rama principal
principal(Persona,Respuesta):-
    anterior(Persona,[],[_|Path]),
    print(Path),
    largo(Path,L),
    8>L, Respuesta="Es de la rama principal",!.
principal(_,Respuesta):-
    Respuesta="No es de la rama principal",!.