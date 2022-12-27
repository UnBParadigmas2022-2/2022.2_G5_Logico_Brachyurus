play(n) :- write('Thank you to play Brachyurus'), nl, !.


/*  Trocar pelo menu de vocês  */

play :-	write('Bachyurus!!!'), nl,
	write('Bachyurus é um jogo em que você tem que ajudar um incrível Lobo-Guará em sua missão'), nl,
	write('1 História'), nl,
	write('2 Tutorial'), nl,
	write('Faça sua escolha'),nl,
	write('>'),
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


