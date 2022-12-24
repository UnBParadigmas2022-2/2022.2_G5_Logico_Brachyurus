menu:-
    write('----------------- BACHYURUS -----------------'),nl,
    write('1 - História'),nl,
    write('2 - Tutorial'),nl,
    write('3 - Jogar'),nl,
    write('4 - Sair'),nl,
    read(X),
	write(X),
	option(X),
	X==0,
	!.

option(1):- write('opcao 1'), nl, !.
option(2):- write('opcao 2'), nl, !.
option(3):- write('opcao 3'), nl, !.
option(4):- write('opcao 4'), nl, !.
option(_):- write('Opcao invalida'), nl, menu.

