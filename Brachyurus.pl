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
 	  write('Apesar do porte imponente e da alcunha de “lobo”, é tímido, solitário e praticamente inofensivo,'), nl,
		write('preferindo manter distância de populações humanas.'), nl,
		write('Usa suas presas para se alimentar de pequenos animais'), nl,
    write('como roedores, tatus e perdizes, além de frutos variados do Cerrado,'), nl,
    write('como o araticum e a lobeira (Solanum lycocarpum), alimento muito consumido pelo guará.'), nl,
    write('Faça sua escolha : '), nl,
		write('1 Investigar toca'), nl,
		write('2 Tentar dormir'), nl,
		write('Faça sua escolha'),nl,
		write('>'),
	    read(Alternative),
		  no6(Alternative).

no3(2) :- write('Os dias passaram e nada de sua mamãe Lobo-Guará. Você está com muita fome, talvez seja a hora de Brachyurus seguir em busca de sua mãe.'), nl,
		write('1 Sair em busca de sua mãe'),nl,
		write('2 Esperar mais?'),nl,
		write('Faça sua escolha'),nl,
		write('>'),
	    read(Alternative),
	    no4(Alternative).

/*  Pode puxar um novo nó a partir do no4(3) "Seguir o caminho sozinho"  */
no4(1) :- write('Você começou a jornada em busca de sua mãe....'), nl,
		write('O cerrado está tranquilo hoje. Mas você está com fome e perdido nos grandes campos do cerrado.'), nl,
		write('Você encontra um bando de Emas, que conhecem bastante a região.'),nl,
		write('As Emas amam matemática, mas não estão conseguindo resolver um desafio.'),nl,
		write('As Emas lhe oferecem ajuda e comida, mas em troca você deve desvendar a charada.'),nl,
		write('1 Resolver a charada'),nl,
		write('2 Seguir o caminho sozinho ?'),nl,
		write('Faça sua escolha'),nl,
		write('>'),
		read(Alternative),
	    no41(Alternative).

no4(2) :- write('Você ficou perdido e com fome pelo Cerrado!'), nl,
		write('Você perdeu !!'),nl,
		write('Gostaria de jogar de novo ? (y,n)'),nl,
		write('>'),
		read(Desire),
		play(Desire).

resposta_charada(195).

startcharada(Tentativas):-
	
	Tentativas>0,
	write('Pensei em um número e somei 35. Depois Tirei 17 e cheguei ao número 213. o numero que pensei foi ???'), nl,
	write('Escreva a resposta >'),
	resposta_charada(Respostacharada),
	read(Guess),
	(   Guess == Respostacharada
	->  write('Resposta Correta.'),no5(0)
	;   Diminuitentativa is Tentativas-1,
		write('Resposta Errada, você tem '),
		write(Diminuitentativa), 
		write(' tentativas restantes'), nl,nl,
		startcharada(Diminuitentativa)
	).

/*  tela de derrota do no4 */
startcharada(0):-

	write('As Emas ficaram revoltadas com você, e te expulsaram da região '), nl,
	write('Você morreu de fome '), nl,nl,
	write('Você perdeu !!'),nl,
	write('Gostaria de jogar de novo ? (y,n)'),nl,
	write('>'),
	read(Desire),
	play(Desire).

no41(1) :- write('O desafio é:'), nl,
	startcharada(4). /*  Inicia charada com 4 tentativas */

no41(2) :- no4(2).

/*  Pode fazer um novo nó apartir daqui */
no5(0) :- write('Continua...'), nl,
		read(Desire),
		play(y).

no6(1) :- write('Ao começar a investigar a toca, um relâmpago ilumina algo no fundo... Parecem ser olhos...'), nl,
    write('Faça sua escolha : '), nl,
		write('1 Correr em direção ao objeto que brilhava'), nl,
		write('2 Fugir da toca'), nl,
		write('Faça sua escolha'),nl,
		write('>'),
	    read(Alternative),
		  no5(Alternative).

no6(2) :- write('Você consegue dormir bastante...'), nl,
    no3(2).
