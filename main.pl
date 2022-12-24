menu:-
    write('----------------- BACHYURUS -----------------'),nl,
    write('1 - História'),nl,
    write('2 - Tutorial'),nl,
    write('3 - Jogar'),nl,
    write('4 - Sair'),nl,
    read_string(user, "\n", "\r", _, X),
	write(X),
	option(X),
	X==0,
	!.

option(0):- !.
option(1):- write('opcao 1'), nl, !.

