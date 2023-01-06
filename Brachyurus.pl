:- use_module(menu).
:- use_module(tutorial).
:- use_module(helpers).
/*:- use_module(library(random))*/

/* Para persistir os itens: */
:- dynamic itensDoJogo/2.
:- dynamic mochila/2.

/* Declarando todos os [itens, peso unitário (kg)] do jogo*/
:- assertz(itensDoJogo('Balde de água', 10.0)),
	assertz(itensDoJogo('Roedor morto', 2.0)),
	assertz(itensDoJogo('Moedas', 0.10)),
	assertz(itensDoJogo('Sino', 0.5)),
	assertz(itensDoJogo('Graveto', 0.2)),
	assertz(itensDoJogo('Pedra', 0.35)),
	assertz(itensDoJogo('Vazio', 0.0)).

/* Funções que adicionam itens na mochila*/ 
ganhou_sino :- 
	nl, write('*** Você ganhou um sino ***'), 
	itensDoJogo('Sino', Peso),
	assertz(mochila('Sino', Peso)).

ganhou_graveto :- 
	nl, write('*** Você ganhou um graveto ***'), 
	itensDoJogo('Graveto', Peso),
	assertz(mochila('Graveto', Peso)).

ganhou_pedra :- 
	nl, write('*** Você ganhou uma pedra ***'), 
	itensDoJogo('Pedra', Peso),
	assertz(mochila('Pedra', Peso)).

ganhou_vazio :- 
	itensDoJogo('Vazio', Peso),
	assertz(mochila('Vazio', Peso)).

/*  Cada nó vai ter 2 paradas que vem das alternativas de cima, ou seja, se o menu tem 2 opções e chama o nó1, precisa ter 2 nós1  */
no1(1) :-
        limpa_tela,
		write('Digite seu nome: TUDO EM MINÚSCULO'), nl,
		read(Name),
		helpers:retractall(name_ranked(_)),
		helpers:assert(name_ranked(Name)),
		write('=> Selecione sua dificuldade:'), nl,
		write('1. Fácil'), nl,
		write('2. Médio'), nl,
		write('3. Difícil'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
		read(Alternative),
		helpers:assert(dificuldade(Alternative)),
		no1_1.

no1(2) :- limpa_tela, 
       write('TUTORIAL. . .'), nl,
	   tutorial,
	   play.
	   
no1(3) :- limpa_tela, 
        write('HISTÓRIA. . .'), nl,
        write('Foi em um dia de primavera que nasceu nosso protagonista, Brachyurus!'), nl, nl,
        write('Os filhotes de lobo guará nascem cegos e surdos, assim, eles permanecem em suas tocas sob o cuidado da mãe.'), nl, nl,
        write('Brachyurus ainda é só um filhote quando acorda sozinho em meio à noite tempestuosa e nota a ausência de sua mãe.'), nl, nl,
        write('Ele nunca tinha saído da toca e estava com fome e com medo'), nl, nl,
		write('Ainda com tenra idade, Brachyurus se deparou com uma realidade que nem mesmo alguns adultos suportam:'), nl,
	    write('Fazer decisões'), nl, nl,
	    write('Você ajudará Brachyurus na perigosa jornada de busca por sua mãe?? (y,n)'), nl,
	    write('>'),
	    read(Alternative),
	   no6(Alternative).
       
no1(4) :- limpa_tela, 
        write('Você não gostaria de ajudar Brachyurus? (y, n)'), nl,
        write('>'),
       	read(Desire),
	    play(Desire).

no1(5) :-limpa_tela,
		write('__________________RANKING_________________'),nl,nl,
		open('ranking.txt',read,In),
		repeat,
		read_line_to_codes(In,X),
		writef(X),nl,
		X=end_of_file,!,
		nl,
		close(In),
		play.



no1_1 :- limpa_tela,
		write('Era uma noite chuvosa, o céu era preenchido por nuvens e a noite escura clareava ao estalar dos trovões e relâmpagos que cortavam o céu naquela fatídica noite.'), nl,
		write('Foi nessas condições que acordou sozinho, Brachyurus !!!'), nl,
		write('Um filhote dos incríveis Lobo-Guará, mas tinha um problema . . .'), nl,
		write('Brachyurus estava sem sua mãe . . . Era uma noite dolorosa para esse filhote !!!'), nl,
		write('Você está em sua toca, é uma noite escura, sorte que você enxerga bem a noite '), nl,
		write('Faça sua escolha : '), nl,
		write('1. Caminhar pela toca'), nl,
		write('2. Sair da toca'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
		inicializar_contador,
		init_ranking,
		read(Alternative),
		no2(Alternative).

no2(1) :- nl,
		write('Após caminhar por um tempo pela toca, encontra um informativo na parede, Brachyurus nunca se atentou a isso . . .'), nl,
		write('1. Ler informativo'), nl,
		write('2. Esperar Mamãe'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
		read(Alternative),
		no3(Alternative).

no2(2) :- limpa_tela, 
        nl,
		helpers:dificuldade(Valor),
		( Valor =:= 1 -> 
			write('A chuva está muito forte e os perigos são muitos. Brachyurus volta para a toca com medo...'), nl, no2(1)
		; Valor =:= 2 ->
			write('A chuva está muito forte e os perigos são muitos. Brachyurus volta para a toca com medo...'), nl, no2(1)
		; Valor =:= 3 ->
			write('A chuva está muito forte e os perigos são muitos.Brachyurus escorregou e foi levado pela água'), nl, fim_jogo
		).

/*  Você consegue forçar a ida pra qualquer nó, olhe a linha 55  */
no3(1) :- limpa_tela, 
        nl,
		write('INFO SOBRE LOBOS GUARÁ'), nl,
 	  write('Apesar do porte imponente e da alcunha de “lobo”, é tímido, solitário e praticamente inofensivo,'), nl,
		write('preferindo manter distância de populações humanas.'), nl,
		write('Usa suas presas para se alimentar de pequenos animais'), nl,
    write('como roedores, tatus e perdizes, além de frutos variados do Cerrado,'), nl,
    write('como o araticum e a lobeira (Solanum lycocarpum), alimento muito consumido pelo guará.'), nl,
    write('Faça sua escolha : '), nl,
		write('1. Investigar toca'), nl,
		write('2. Tentar dormir'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
		  no6(Alternative).

no3(2) :- limpa_tela, 
        nl,
		write('Os dias passaram e nada de sua mamãe Lobo-Guará. Você está com muita fome, talvez seja a hora de Brachyurus seguir em busca de sua mãe.'), nl,
		write('1. Sair em busca de sua mãe'),nl,
		write('2. Esperar mais?'),nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no4(Alternative).

/*  Pode puxar um novo nó a partir do no4(3) "Seguir o caminho sozinho"  */
no4(1) :- 
        nl,
		incrementar_contador,
		sum_ranking,
		write('Entáo Você começou a jornada em busca de sua mãe....'), nl,
		write('O cerrado está tranquilo hoje. Mas você está com fome e perdido nos grandes campos do cerrado.'), nl,
		write('Você encontra um bando de Emas, que conhecem bastante a região.'),nl,
		write('As Emas amam matemática, mas não estão conseguindo resolver um desafio.'),nl,
		write('As Emas lhe oferecem ajuda e comida, mas em troca você deve desvendar a charada.'),nl,
		write('1. Resolver a charada'),nl,
		write('2. Seguir o caminho sozinho ?'),nl,
		write('Faça sua escolha:'),nl,
		write('>'),
		read(Alternative),
	    no41(Alternative).

no4(2) :- limpa_tela, 
        nl, 
		helpers:dificuldade(Valor),
		( Valor =:= 1 -> 
			write('Você ficou sozinho e com fome! Então após um tempo esperando você saiu em busca de sua mãe.'), nl, no4(1)
		; Valor =:= 2 ->
			write('Você ficou sozinho e com fome! Quando acordou já era tarde para caçar comida...'), nl, fim_jogo
		; Valor =:= 3 ->
			write('Você ficou sozinho e com fome! Quando acordou já era tarde para caçar comida...'), nl, fim_jogo
		).

no41(1) :- limpa_tela,
		sum_ranking,
        nl, write('O desafio é:'), nl,
		startcharada(4). /*  Inicia charada com 4 tentativas */

no41(2) :- limpa_tela, 
        no4(2).

no5(1) :- limpa_tela,  
        incrementar_contador,
		sum_ranking,
		nl, write('As emas te parabenizam e lhe oferecem frutos, '), nl,
		write('além de informar que existem dois locais onde sua mãe pode ter se abrigado da chuva. '), nl,
		write('A caverna da terrível onça-pintada ou a tenda do caçador. '),nl,
		write('1. Seguir na direção da caverna!'), nl,
		write('2. Seguir na direção da tenda!'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
		read(Alternative),
		no8(Alternative).

no6(1) :- limpa_tela, 
		sum_ranking,
        nl, write('Ao começar a investigar a toca, um relâmpago ilumina algo no fundo... Parecem ser olhos...'), nl,
		write('1. Correr em direção ao objeto que brilhava'), nl,
		write('2. Fugir da toca'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
		  no7(Alternative).

no6(2) :- limpa_tela, 
    nl, write('Você consegue dormir bastante...'), nl,
    no3(2).

no7(1) :- limpa_tela,
		sum_ranking,
        nl, write('Ao se aproximar, Brachyurus pôde identificar o que a forma brilhante era'), nl, nl,
        write('Se tratava de Cuca!'), nl, nl,
        write('Sua vizinha coruja que informou ter a casa destruída pela tempestade'), nl, nl,
        write('1. Afugentar Cuca'), nl,
        write('2. Oferecer abrigo a Cuca'), nl,
        write('3. Chorar de saudade da mãe'), nl,
        write('>'),
	    read(Alternative),
		no22(Alternative).

no7(2) :- limpa_tela,
        no4(1).

no8(1) :- limpa_tela, 
		sum_ranking,
        nl, write('No caminho da caverna da onça-pintada, '), nl,
 	  	write('você se depara com o cachorro caramelo, '), nl,
		write('famoso por ser o campeão do torneio anual de borogodobol na selva. '), nl,
		write('Porém o cachorro está com um galho de uma árvore em cima de suas patas traseiras, '), nl,
		write('por conta do vento forte da chuva. '), nl,
		write('1. Ajudar cachorro caramelo.'), nl,
		write('2. Seguir em frente.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
		no9(Alternative).

no8(2) :- limpa_tela,
		sum_ranking,
        nl, write('No caminho da tenda do caçador'), nl,
		write('você se depara com o tatu canastra, '), nl,
		write('famoso por seus truques e artimanhas. '), nl,
		write('Porém o tatu está com problemas... '), nl,
		write('Por conta da chuva, um riacho próximo a sua toca transbordou, '), nl,
		write('e ele está tentando evitar que sua toca alague.'), nl,
		write('1. Ajudar o tatu canastra.'),nl,
		write('2. Seguir em frente.'),nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no10(Alternative).

no9(1) :- limpa_tela, 
        incrementar_contador,
		sum_ranking,
		nl, write('O cachorro caramelo fica muito grato pela sua ajuda, '), nl,
 	  	write('porém não sabe nada sobre sua mãe, mas diz que para retribuir irá te acompanhar até a caverna da onça-pintada. '), nl,
		write('Além disso, ele te dá um item para você lembrar dele durante a sua caminhada. '), nl,
		ganhou_sino, nl,
		write('Você seguiu sua viagem. Passado algum tempo de caminhada, próximo a caverna da onça-pintada são encontradas pegadas de lobo-guará.'), nl,
		write('Porém uma ventania forte acontece e as pegadas somem, '), nl,
		write('felizmente o cachorro caramelo tem um ótimo faro e consegue sentir o cheiro do dono/a das pegadas.'), nl,
		write('1. Confiar no cachorro caramelo e segui-lo.'), nl,
		write('2. Desconfiar do cachorro caramelo e seguir em direção da caverna.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
		  no11(Alternative).

no9(2) :- limpa_tela, 
        decrementar_contador,
		sub_ranking,
		ganhou_vazio,
		nl, write('Passado algum tempo de caminhada, próximo a caverna da onça-pintada são encontradas pegadas de lobo-guará.'), nl,
		write('Porém uma ventania forte acontece e as pegadas somem, '), nl,
		write('infelizmente o seu faro não é bom suficiente para acompanhar o cheiro.'), nl,
		write('1. Seguir em direção da caverna.'), nl,
		write('2. Voltar e seguir em direção da tenda do caçador.'),nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no12(Alternative).

/*  Continuar no daqui se quiser ou deixar o tatu como otario */
no10(1) :- limpa_tela, 
        incrementar_contador,
		sum_ranking,
		helpers:dificuldade(Valor),
		( Valor =:= 1 -> 
			nl, write('Ao ajudar o tatu canastra, ele nota o resto das suas frutas em seu bolso e as pega para si,'), nl,
			write('Quando você percebe ele já entrou em sua toca e trancou a porta. '), nl,
			write('Então você segue caminho...'), nl, no14(1)
		; Valor =:= 2 ->
			nl, write('Ao ajudar o tatu canastra, ele nota o resto das suas frutas em seu bolso e as pega para si,'), nl,
			write('Quando você percebe ele já entrou em sua toca e trancou a porta. '), nl,
			write('Então você segue caminho...'), nl, no14(1)
		; Valor =:= 3 ->
			nl, write('Ao ajudar o tatu canastra, ele nota o resto das suas frutas em seu bolso e as pega para si,'), nl,
			write('Quando você percebe ele já entrou em sua toca e trancou a porta. '), nl,
			write('Então você segue caminho, mas fica com fome e morre!'), nl, fim_jogo
		).

no10(2) :- limpa_tela, 
        decrementar_contador,
		sub_ranking,
		nl, write('Ao seguir em frente o tatu te vê e grita por sua ajuda. '), nl,
		write('1. Seguir em frente mesmo assim.'), nl,
		write('2. Ajudar o tatu canastra.'),nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no14(Alternative).

no11(1) :- limpa_tela, 
        incrementar_contador,
		sum_ranking,
		nl, write('O cachorro caramelo segue os rastros até uma entrada secreta da caverna. '), nl,
 	  	write('Então o cachorro pede desculpas e fala que só te acompanhará até aquele ponto porque tem muito medo da onça-pintada. '), nl,
		write('Vocês se despedem e ao entrar na caverna você...'), nl,
		write('1. Grita por sua mãe.'), nl,
		write('2. Segue furtivamente.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
		  no13(Alternative).

/*  Juntei os nos aqui, mas se quiserem dar uma vantagem para o usuario que ajudou e seguiu o 
cachorro caramelo continuar no daqui com mais dificuldade */
no11(2) :- limpa_tela, 
        decrementar_contador,
		sub_ranking,
		nl, write('Ao chegar na entrada da caverna sozinho e assustado você não vê nem sinal da onça-pintada.'), nl,
		write('Ao entrar na caverna você...'), nl,
		write('1. Grita por sua mãe.'), nl,
		write('2. Segue furtivamente.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no13(Alternative).

no12(1) :- limpa_tela,
        no11(2).

no12(2) :- limpa_tela, 
        no8(2).

no13(1) :- limpa_tela,
        nl, write('A onça-pintada que estava escondida dormindo te ouviu e te transformou em pedacinhos!'), nl,
		fim_jogo.

no13(2) :- limpa_tela,
		sum_ranking,
        nl, write('Ao caminhar furtivamente pela caverna...Você ouve alguns barulhos, então começa a seguir os sons... Enquanto seguia, acabou encontrando uma lobeira...'), nl,
		write('1. Seguir investigando sons'), nl,
		write('2. Comer lobeira'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	  read(Alternative),
	  no15(Alternative).
		
no14(1) :-
		sum_ranking,
        nl, write('Ao seguir em frente... O tatu fica furioso e taca uma pedra em você.'), nl,
		ganhou_pedra, nl,
		nl, write('Seguindo seu caminho, você se depara com um enorme incêndio causado pelos caçadores.'), nl,
		write('1. Seguir em direção ao incêndio para procurar pela sua mãe.'), nl,
		write('2. Ignorar o incêndio e dar meia volta.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no19(Alternative).

no14(2) :- limpa_tela,
        no10(1).

no15(1) :- limpa_tela, 
		helpers:dificuldade(Valor),
		( Valor =:= 1 -> 
			write('Você está fraco, seus sentidos começam a ficar confusos... Até que...'), nl,
			write('Você retorna e busca a lobeira...'), nl, no15(2)
		; Valor =:= 2 ->
			write('Você está fraco, seus sentidos começam a ficar confusos... Até que...'), nl,
			write('Você retorna e busca a lobeira...'), nl, no15(2)
		; Valor =:= 3 ->
			write('Você está fraco, seus sentidos começam a ficar confusos... Até que...'), nl,
			write('Você morreu de fome!'), nl, fim_jogo
		).

no15(2) :- 
		sum_ranking,
        nl, write('Você come a lobeira, estava deliciosa e consegue se sentir mais forte! Os barulhos persistem e parecem estar se aproximando.'), nl,
		write('1. Tentar se esconder na caverna'), nl,
		write('2. Gritar pedindo socorro'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
        no16(Alternative).

no16(1) :- limpa_tela,
		sum_ranking,
        nl, write('Você se escondeu em uma parte mais escura da caverna e ficou o mais encolhido possível... Você vê a Onça-Pintada seguindo o cheiro de algo, ela para onde estava a lobeira, cheira bastante, e segue até a entrada da caverna...'), nl,
		mochila(X,_),
			( X = 'Sino' -> write('1. Jogar o sino para distrair a onça!'), nl, write('2. Esperar para ver o que acontece'), nl, write('Faça sua escolha:'),nl, write('>'), read(Alternative), no161(Alternative)
			;
			X = 'Graveto' -> write('1. Jogar o graveto para distrair a onça!'), nl, write('2. Esperar para ver o que acontece'), nl, write('Faça sua escolha:'),nl, write('>'), read(Alternative), no161(Alternative)
			;
			X = 'Pedra' -> write('1. Jogar a pedra para distrair a onça!'), nl, write('2. Esperar para ver o que acontece'), nl, write('Faça sua escolha:'),nl, write('>'), read(Alternative), no161(Alternative)
			; 
			write('1. Esperar para ver o que acontece'), nl,
			write('Faça sua escolha:'),nl,
			write('>'),
			read(Alternative),
			no17(Alternative)
			).

no161(1) :- limpa_tela,
		sum_ranking,
        nl, write('Você jogou o item para distrair a onça, agora você tem a oportunidade de atacar a Onça-Pintada pelas costas, porém ela conseguiu ouvir seu pulo e desviou do seu ataque, você caiu fora da caverna... '), nl,
		write('A Onça-Pintada vem em sua direção porém, uma sombra aparece sobre você… É sua mamãe e o cachorro caramelo! '), nl,
        write('A Onça é muito poderosa, porém 3 adversários já parece ser um número grande para ela, então ela volta para caverna... '), nl,nl,
        write('Você GANHOU !!'),nl,
		write_ranking,
        write('Gostaria de jogar de novo ? (y,n)'),nl,
        write('>'),
        read(Desire),
        play(Desire).

no161(2) :- limpa_tela,
		sum_ranking,
        nl, write('A Onça seguiu para fora da caverna, você então decide terminar de investigar a caverna... Porém não encontra mais ninguém...'), nl,
		write('Opa! Uma pegada de lobo-guará!! Provavelmente sua mãe esteve por aqui há pouco tempo!'), nl,
		write('1. Esperar um tempo para sair da caverna e seguir em direção à tenda'), nl,
		write('2. Esperar que sua mãe apareça novamente na caverna por tempo indeterminado'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	  	read(Alternative),
		no18(Alternative).

no16(2) :- limpa_tela, 
        nl, write('A Onça-Pintada ouve os seus gritos e vem correndo te atacar, você não teve a menor chance...'), nl,
		write('Você morreu pelo ataque da Onça! '), nl,nl,
    	fim_jogo.

no17(1) :- limpa_tela,
		sum_ranking,
        nl, write('A Onça seguiu para fora da caverna, você então decide terminar de investigar a caverna... Porém não encontra mais ninguém...'), nl,
		write('Opa! Uma pegada de lobo-guará!! Provavelmente sua mãe esteve por aqui há pouco tempo!'), nl,
		write('1. Esperar um tempo para sair da caverna e seguir em direção à tenda'), nl,
		write('2. Esperar que sua mãe apareça novamente na caverna por tempo indeterminado'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	  	read(Alternative),
		no18(Alternative).

no18(1) :- limpa_tela,
        no8(2).

no18(2) :- limpa_tela,
        nl, write('Você esperou tanto que a Onça voltou e você não teve como fugir...'), nl,
    	write('Você morreu pelo ataque da Onça! '), nl,nl,
        fim_jogo.

no19(1) :- limpa_tela, 
        nl, write('Ao entrar no incêndio...A visão está baixa por conta da fumaça, você não vê sinais da sua mãe, porém avista um sagui preso numa árvore em chamas.'), nl,
		write('1. Salvar a vida do sagui.'), nl,
		write('2. Dar meia volta e sair do incêndio.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no20(Alternative).

no19(2) :- limpa_tela,
        no10(2).

no20(1) :- limpa_tela,
        incrementar_contador,
		nl, write('Você salva bravamente o sagui que acaba de cair de um tronco flamejante e iria se esborrachar no chão.'), nl,
		write('1. Perguntar se o sagui viu sua mãe.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no21(Alternative).

no20(2) :- limpa_tela,
		sub_ranking,
        decrementar_contador,
		no10(2).

no21(1) :- limpa_tela,
        nl, write('O sagui disse que viu sua mamãe nos arredores da caverna'), nl,
		write('1.Voltar para a caverna em busca de sua mamãe'), nl,
		write('2.Seguir em buscas de sua mamãe na tenda do caçador'), nl,
		write('>'),
	    read(Alternative), 
		no26(Alternative).

/*decrementar aqui*/
no22(1) :- limpa_tela,
        decrementar_contador,
        nl, write('Seu menino mal educado.'), nl,
        write('Não conte comigo para sua jornada'), nl,
        write('E boa sorte achando sua mãe sozinho!'), nl, nl,
        no4(1).
	
no22(2) :- limpa_tela,
        nl, write('Obrigada, garoto'), nl,
        incrementar_contador,
        write('A propósito, vi sua mãe fugindo ainda ontem em direção à caverna da onça'), nl,
        write('1. Questionar Cuca a respeito da informação'), nl,
        write('2. Mandar ela ir em seu lugar'), nl,
        read(Alternative),
        no23(Alternative).
	
no22(3) :- limpa_tela, 
        nl, write('Chorar lava a alma, mas não vai trazer sua mãe de volta'), nl,
        write('1. Afugentar Cuca'), nl,
        write('2. Oferecer abrigo a Cuca'), nl,
        write('3. Chorar de saudade da mãe'), nl,
        write('>'),
    	read(Alternative),
    	no22(Alternative).
	
no23(1) :- limpa_tela,
		sum_ranking,
        nl, write('Isso mesmo. Algumas horas atrás vi sua mãe saindo da toca às pressas'), nl,
        write('E então, vai querer companhia na sua busca?'), nl,
        write('1. Sim'), nl,
    	write('2. Não'), nl,
    	write('3. Aguardar mais a volta de mamãe'), nl,
    	write('>'),
    	read(Alternative),
    	no25(Alternative).

no23(2) :- limpa_tela,
        nl, write('Não farei sua aventura por você, mas vou te acompanhar'), nl,
        no25(1).
	
no24(1) :- limpa_tela,
        no4(2).

    
no25(1) :- limpa_tela,
        nl, write('No caminho você encontra Carlinhos, a Capivara!'), nl,
		write('Conhecido por ser bastante amigável e guloso'), nl, nl,
		write('Ele se aproxima vagarosamente e pede um pouco de comida em troca de informações sobre sua mãe'), nl,
		write('1. Dar comida'), nl,
		write('2. Poupar comida'),nl,
		write('>'),
		read(Alternative),
		no29(Alternative).
		
no25(2) :- limpa_tela,
        nl, write('Não preciso da companhia de ninguém. vou sozinho mesmo.'), nl,
        write('Mas estou com tanta fome...'), nl,
        write('Vou me sentar um pouco aqui nessa sombra'), nl,
        no15(1).

no25(3) :- limpa_tela,
        no4(2).

no25(3) :- limpa_tela,
        no4(2).

no26(1) :- limpa_tela,
		nl, write('Voce volta para a caverna'),
		no16(1).

no26(2) :- 
		nl, write('Você entra na tenda do caçador e ele está dormindo'), nl,
		write('1.Procurar sua mamãe na tenda'), nl,
		write('2.Sair da tenda'), nl,
		write('>'),
		read(Alternative),
		no27(Alternative).

no27(1) :- limpa_tela,
		nl, write('Com todo cuidado você procura pela tenda e não encontra pistas da sua mamãe, então você decide sair da tenda.'), nl,
		no27(2).

no27(2) :-
		nl, write('Ao sair da tenda você pisa em um galho e faz barulho e acorda o caçador'), nl,
		write('1.Correr!'), nl,
		write('2.Pedir ajudar ao caçador'), nl,
		write('>'),
		read(Alternative),
		no28(Alternative).

no28(1) :- limpa_tela,
		nl, write('Você tenta correr porém o caçador é muito ágil e consegue te acertar e te captura.'), nl,
		fim_jogo.

no28(2) :- limpa_tela,
		nl, write('Você tenta pedir ajuda ao caçador mas ele não te dá ouvidos e te trasforma em um lindo tapete de porta'), nl,
		fim_jogo.

no29(1) :- limpa_tela,
        nl, write('Ah meu caro amigo, eu vi sua mãe caminhando em direção a tenda do caçador!'), nl,
        no8(2).

no29(2) :- limpa_tela,
        nl, write('Carlinhos fica muito bravo pela seu egoismo, só le resta seguir em direção a floresta, ao entrar você se depara com dois caminhos'), nl,
		write('1.Seguir pela floresta densa'), nl,
		write('2.Seguir em direção a fumaça'), nl,
		write('>'),
		read(Alternative),
		no30(Alternative).

no30(1) :- limpa_tela,
        nl, write('Ao entrar na floresta densa logo de cara, você se depara com uma bela jaguatirica, descansado deitada em uma árvore. Com o barulho de seus passos a jaguatirica acorda e vai ao seu encontro.'), nl,
		write('1.Fugir da Jaguatirica'), nl,
		write('2.Falar com ela'), nl,
		write('>'),
		read(Alternative),
		no31(Alternative).

no30(2) :- limpa_tela,
        nl, write('Caminhando em direção a fumaça, você tropeçou em graveto e se machucou, mas nada muito sério. Você precisa achar sua mãe!'), nl,
		ganhou_graveto, nl,
		nl, write('Mais à frente, você vê uma anta caida no chão pedindo ajuda.'), nl,
        nl, write('Jovém lobo me ajude, me chamo Claúdio, fugindo das queimada acabei me machucando, ME AJUDE!'), nl,
		write('1.Ajudar o Claúdio'), nl,
		write('2.Seguir em frente'), nl,
		write('>'),
		read(Alternative),
		no32(Alternative).

no31(1) :- limpa_tela,
        nl, write('Correndo desesperado na tentativa de fugir da Jaguatirica você segue para a fumaça. Depois de um tempo você cansado começar a caminhar'), nl,
		no30(2).

no31(2) :- limpa_tela,
        nl, write('Olá pequeno lobo, me chamo Priscila, a jaguatirica, acredito que esteja longe de casa, nunca vi sua espécie por essas bandas, posso te ajudar, mas para isso terá que resolver uma charada, HAHA'), nl,
        write('A charada é:'), nl,
		startcharada_jaguatirica(1).

no32(1) :- limpa_tela,
        nl, write('Muito obrigado jovem, como eu poderia retribuir sua ajudar meu caro'), nl,
		write('1.Estou procurando minha mãe'), nl,
		write('2.Estou perdido'), nl,
		write('>'),
		read(Alternative),
		no33(Alternative).

no32(2) :- limpa_tela,
        nl, write('Você está perdido e avista um incêndio um pouco perto dali.'), nl,
		write('1.Continuar entrando na floresta'), nl,
		write('2.Seguir em direção ao incêndio'), nl,
		write('>'),
		read(Alternative),
		no34(Alternative).

no33(1) :- limpa_tela,
        nl, write('Eu vi uma loba de sua espécie indo para a caverna, não posso le acompanhar, mas desejo sorte em sua caminhada'), nl,
		no8(1).

no33(2) :- limpa_tela,
        nl, write('Calma meu jovem lobo, Eu vi uma loba de sua espécie indo para a caverna, não posso le acompanhar, mas desejo sorte em sua caminhada, sei que ira dar tudo certo.'), nl,
		no8(1).

no34(1) :- limpa_tela,
        nl, write('Andando em direção ao escuro da floresta, a noite vai se aproximando e o brachyurus parece está cada vez mais longe de encontrar sua mamãe.'), nl,
        nl, write('Brachyurus começa a perceber que está sendo observado porém cansado e com fome, não tem energia para fugir.'), nl,
        nl, write('Quando de repente um onça parda o ataca, sem forças para lutar, brachyurus vê sua vida se esvaindo diante de seus olhos.'), nl,
        nl, write('A onça parda o carrega até a toca da onça pintada, onde juntas saboream de um belo jantar.'), nl,
		fim_jogo.

no34(2) :- limpa_tela,
        nl, write('Você decide caminhar em direção ao incêndio, na tentativa de encontra sua mãe'), nl,
		no19(1).

no35(1) :-limpa_tela,
		nl, write('Parabéns você acertou a charada, vou le ajudar, vi uma loba de sua espécie caminhando para a tenda do caçador. HAHA'), nl,
		write('Então Brachyurus segue para a tenda do caçador.'), nl,
		no26(2).

no35(2) :-limpa_tela,
		nl, write('Você errou a charada, porém vou le ajudar, vi uma loba de sua espécie caminhando para a tenda do caçador. HAHA'), nl,
		write('Então Brachyurus segue para a tenda do caçador.'), nl,
		no26(2).