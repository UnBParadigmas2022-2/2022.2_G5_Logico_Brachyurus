play(n) :- write('Obrigado por jogar Brachyurus'), nl, !.


play :-	write('____________________________________________________________________________________'),nl,
    write('                                                                                    '),nl,
    write('██████╗ ██████╗  █████╗  ██████╗██╗  ██╗██╗   ██╗██╗   ██╗██████╗ ██╗   ██╗███████╗'),nl,
    write('██╔══██╗██╔══██╗██╔══██╗██╔════╝██║  ██║╚██╗ ██╔╝██║   ██║██╔══██╗██║   ██║██╔════╝'),nl,
    write('██████╔╝██████╔╝███████║██║     ███████║ ╚████╔╝ ██║   ██║██████╔╝██║   ██║███████╗'),nl,
    write('██╔══██╗██╔══██╗██╔══██║██║     ██╔══██║  ╚██╔╝  ██║   ██║██╔══██╗██║   ██║╚════██║'),nl,
    write('██████╔╝██║  ██║██║  ██║╚██████╗██║  ██║   ██║   ╚██████╔╝██║  ██║╚██████╔╝███████║'),nl,
    write('╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝'),nl,
    write('                                                                                    '),nl,
    write('____________________________________________________________________________________'),nl,  
    write('                                                                                    '),nl,
    write('                                   MENU                                             '),nl,
    write('____________________________________________________________________________________'),nl,
    write('                                                                                    '),nl,
    write('                             1 - Jogar'),nl,
    write('                             2 - Tutorial'),nl,
    write('                             3 - História'),nl,
    write('                             4 - Sair'),nl,
	read(Alternative),
	no1(Alternative).

play(y) :- play.

/*  Cada nó vai ter 2 paradas que vem das alternativas de cima, ou seja, se o menu tem 2 opções e chama o nó1, precisa ter 2 nós1  */

no1(1) :- write('Era uma noite chuvosa, o céu era preenchido por nuvens e a noite escura clareava ao estalar dos trovões e relâmpagos que cortavam o céu naquela fatídica noite.'), nl,
		write('Foi nessas condições que acordou sozinho, Brachyurus !!!'), nl,
		write('Um filhote dos incríveis Lobo-Guará, mas tinha um problema . . .'), nl,
		write('Brachyurus estava sem sua mãe . . . Era uma noite dolorosa para esse filhote !!!'), nl,
		write('Você está em sua toca, é uma noite escura, sorte que você enxerga bem a noite '), nl,
		write('Faça sua escolha : '), nl,
		write('1 Caminhar pela toca'), nl,
		write('2 Sair da toca'), nl,
		write('Faça sua escolha'),nl,
		write('>'),
		read(Alternative),
		no2(Alternative).

no1(2) :- write('TUTORIAL. . .'), nl,
	   play.
	   
no1(3) :- write('HISTÓRIA. . .'), nl,
        write('Foi em um dia de primavera que nasceu nosso protagonista, Brachyurus!'), nl, nl,
        write('Os filhotes de lobo guará nascem cegos e surdos, assim, eles permanecem em suas tocas sob o cuidado da mãe.'), nl, nl,
        write('Brachyurus ainda é só um filhote quando acorda sozinho em meio à noite tempestuosa e nota a ausência de sua mãe.'), nl, nl,
        write('Ele nunca tinha saído da toca e estava com fome e com medo'), nl, nl,
		write('Ainda com tenra idade, Brachyurus se deparou com uma realidade que nem mesmo alguns adultos suportam:'), nl,
	    write('Fazer decisões'), nl, nl,
	    write('Você ajudará Brachyurus na perigosa jornada de busca por sua mãe?? (y,n)'), nl,
	    write('>'),
	    read(Desire),
	    play(Desire).
       
no1(4) :- write('Você não gostaria de ajudar Brachyurus? (y, n)'), nl,
        write('>'),
       	read(Desire),
	    play(Desire).


no2(1) :- write('Tem um informativo na parede, Brachyurus nunca se atentou a isso . . .'), nl,
	   write('1 Ler informativo'), nl,
	   write('2 Esperar Mamãe'), nl,
	   write('Faça sua escolha'),nl,
		write('>'),
	   read(Alternative),
	   no3(Alternative).

no2(2) :- write('A chuva está muito forte e os perigos são muitos.Brachyurus escorregou e foi levado pela água'), nl,
 	    write('Você perdeu !!'),nl,
		write('Gostaria de jogar de novo ? (y,n)'),nl,
		write('>'),
	    read(Desire),
	    play(Desire).

/*  Você consegue forçar a ida pra qualquer nó, olhe a linha 55  */
no3(1) :- write('INFO SOBRE LOBOS GUARÁ'), nl,
 	    write('1 Esperar mamãe'),nl,
		write('Faça sua escolha'),nl,
		write('>'),
	    read(Desire),
	    no3(2).

no3(2) :- write('Os dias passaram e nada de sua mamãe Lobo-Guará. Você está com muita fome, talvez seja a hora de Brachyurus seguir em busca de sua mãe.'), nl,
		write('1 Sair em busca de sua mãe'),nl,
		write('2 Esperar mais e morrer ?'),nl,
		write('Faça sua escolha'),nl,
		write('>'),
	    read(Desire),
	    play(Desire).

no4(1) :- write('Você começou a jornada em busca de sua mãe....'), nl,
		write('O cerrado está tranquilo hoje. Mas você está com fome e perdido nos grandes campos do cerrado.'), nl,
		write('Você encontra um bando de Emas, que conhecem bastante a região.'),nl,
		write('As Emas amam matemática, mas não estão conseguindo resolver um desafio.'),nl,
		write('As Emas lhe oferecem ajuda e comida, mas em troca você deve desvendar a charada.'),nl,
		write('1 Resolver a charada'),nl,
		write('2 Seguir o caminho sozinho ?'),nl,
		write('Faça sua escolha'),nl,
		write('>'),
		







