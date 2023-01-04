:- use_module(menu).
:- use_module(tutorial).
:- use_module(helpers).

/*  Cada nó vai ter 2 paradas que vem das alternativas de cima, ou seja, se o menu tem 2 opções e chama o nó1, precisa ter 2 nós1  */

no1(1) :- 		
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
		read(Alternative),
		no2(Alternative).

no1(2) :- write('TUTORIAL. . .'), nl,
	   tutorial,
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
	    read(Alternative),
	   no6(Alternative).
       
no1(4) :- write('Você não gostaria de ajudar Brachyurus? (y, n)'), nl,
        write('>'),
       	read(Desire),
	    play(Desire).


no2(1) :- nl,
		write('Tem um informativo na parede, Brachyurus nunca se atentou a isso . . .'), nl,
	   write('1. Ler informativo'), nl,
	   write('2. Esperar Mamãe'), nl,
	   write('Faça sua escolha:'),nl,
		write('>'),
	   read(Alternative),
	   no3(Alternative).

no2(2) :- nl,
		write('A chuva está muito forte e os perigos são muitos.Brachyurus escorregou e foi levado pela água'), nl,
 	    write('Você perdeu !!'),nl,
		verificar_contador,
		write('Gostaria de jogar de novo ? (y,n)'),nl,
		write('>'),
	    read(Desire),
	    play(Desire).

/*  Você consegue forçar a ida pra qualquer nó, olhe a linha 55  */
no3(1) :- nl,
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

no3(2) :- nl,
		write('Os dias passaram e nada de sua mamãe Lobo-Guará. Você está com muita fome, talvez seja a hora de Brachyurus seguir em busca de sua mãe.'), nl,
		write('1. Sair em busca de sua mãe'),nl,
		write('2. Esperar mais?'),nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no4(Alternative).

/*  Pode puxar um novo nó a partir do no4(3) "Seguir o caminho sozinho"  */
no4(1) :- nl,
		incrementar_contador,
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

no4(2) :- nl, write('Você ficou perdido e com fome pelo Cerrado!'), nl,
		write('Você perdeu !!'),nl,
		verificar_contador,
		write('Gostaria de jogar de novo ? (y,n)'),nl,
		write('>'),
		read(Desire),
		play(Desire).


no41(1) :- nl, write('O desafio é:'), nl,
		startcharada(4). /*  Inicia charada com 4 tentativas */

no41(2) :- no4(2).

no5(1) :- incrementar_contador,
		nl, write('As emas te parabenizam e lhe oferecem frutos, '), nl,
		write('além de informar que existem dois locais onde sua mãe pode ter se abrigado da chuva. '), nl,
		write('A caverna da terrível onça-pintada ou a tenda do caçador. '),nl,
		write('1. Seguir na direção da caverna!'), nl,
		write('2. Seguir na direção da tenda!'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
		read(Alternative),
		no8(Alternative).

no6(1) :- nl, write('Ao começar a investigar a toca, um relâmpago ilumina algo no fundo... Parecem ser olhos...'), nl,
		write('1. Correr em direção ao objeto que brilhava'), nl,
		write('2. Fugir da toca'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
		  no7(Alternative).

no6(2) :- nl, write('Você consegue dormir bastante...'), nl,
    no3(2).

no7(1) :- nl, write('Ao se aproximar, Brachyurus pôde identificar o que a forma brilhante era'), nl, nl,
        write('Se tratava de Cuca!'), nl, nl,
        write('Sua vizinha coruja que informou ter a casa destruída pela tempestade'), nl, nl,
        write('1. Afugentar Cuca'), nl,
        write('2. Oferecer abrigo a Cuca'), nl,
        write('3. Chorar de saudade da mãe'), nl,
        write('>'),
	    read(Alternative),
		no22(Alternative).

no7(2) :- no4(1).

no8(1) :- nl, write('No caminho da caverna da onça-pintada, '), nl,
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

no8(2) :- nl, write('No caminho da tenda do caçador'), nl,
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

no9(1) :- incrementar_contador,
		nl, write('O cachorro caramelo fica muito grato pela sua ajuda, '), nl,
 	  	write('porém não sabe nada sobre sua mãe, mas diz que para retribuir irá te acompanhar até a caverna da onça-pintada. '), nl,
		write('Passado algum tempo de caminhada, próximo a caverna da onça-pintada são encontradas pegadas de lobo-guará.'), nl,
		write('Porém uma ventania forte acontece e as pegadas somem, '), nl,
		write('felizmente o cachorro caramelo tem um ótimo faro e consegue sentir o cheiro do dono/a das pegadas.'), nl,
		write('1. Confiar no cachorro caramelo e segui-lo.'), nl,
		write('2. Desconfiar do cachorro caramelo e seguir em direção da caverna.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
		  no11(Alternative).

no9(2) :- decrementar_contador,
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
no10(1) :- incrementar_contador,
		nl, write('Ao ajudar o tatu canastra, ele nota o resto das suas frutas em seu bolso e as pega para si,'), nl,
		write('Quando você percebe ele já entrou em sua toca e trancou a porta. '), nl,
		write('Então você segue caminho, mas fica com fome e morre!'), nl,
		write('Você perdeu!!'),nl,
		verificar_contador,
		write('Gostaria de jogar de novo ? (y,n)'),nl,
		write('>'),
		read(Desire),
		play(Desire).

no10(2) :- decrementar_contador,
		nl, write('Ao seguir em frente o tatu te vê e grita por sua ajuda. '), nl,
		write('1. Seguir em frente mesmo assim.'), nl,
		write('2. Ajudar o tatu canastra.'),nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no14(Alternative).

no11(1) :- incrementar_contador,
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
no11(2) :- decrementar_contador,
		nl, write('Ao chegar na entrada da caverna sozinho e assustado você não vê nem sinal da onça-pintada.'), nl,
		write('Ao entrar na caverna você...'), nl,
		write('1. Grita por sua mãe.'), nl,
		write('2. Segue furtivamente.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no13(Alternative).

no12(1) :- no11(2).

no12(2) :- no8(2).

no13(1) :- nl, write('A onça-pintada que estava escondida dormindo te ouviu e te transformou em pedacinhos!'), nl,
		write('Você perdeu!!'),nl,
		verificar_contador,
		write('Gostaria de jogar de novo ? (y,n)'),nl,
		write('>'),
		read(Desire),
		play(Desire).

no13(2) :- nl, write('Ao caminhar furtivamente pela caverna...Você ouve alguns barulhos, então começa a seguir os sons... Enquanto seguia, acabou encontrando uma lobeira...'), nl,
		write('1. Seguir investigando sons'), nl,
		write('2. Comer lobeira'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	  read(Alternative),
	  no15(Alternative).
		
no14(1) :- nl, write('Ao seguir em frente... Você se depara com um enorme incêndio causado pelos caçadores.'), nl,
		write('1. Seguir em direção ao incêncio para procurar pela sua mãe.'), nl,
		write('2. Ignorar o incêndio e dar meia volta.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no19(Alternative).

no14(2) :- no10(1).

no15(1) :- nl, write('Você está fraco, seus sentidos começam a ficar confusos... Até que...'), nl,
		write('Você morreu de fome '), nl,nl,
    write('Você perdeu !!'),nl,
    write('Gostaria de jogar de novo ? (y,n)'),nl,
    write('>'),
    read(Desire),
    play(Desire).

no15(2) :- nl, write('Você come a lobeira, estava deliciosa e consegue se sentir mais forte! Os barulhos persistem e parecem estar se aproximando.'), nl,
		write('1. Tentar se esconder na caverna'), nl,
		write('2. Gritar pedindo socorro'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	  read(Alternative),
    no16(Alternative).

no16(1) :- nl, write('Você se escondeu em uma parte mais escura da caverna e ficou o mais encolhido possível... Você vê a Onça-Pintada seguindo o cheiro de algo, ela para onde estava a lobeira, cheira bastante, e segue até a entrada da caverna...'), nl,
		write('1. Atacar a Onça-Pintada pelas costas'), nl,
		write('2. Esperar para ver o que acontece'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	  read(Alternative),
    no17(Alternative).

no16(2) :- nl, write('A Onça-Pintada ouve os seus gritos e vem correndo te atacar, você não teve a menor chance...'), nl,
		write('Você morreu pelo ataque da Onça! '), nl,nl,
    write('Você perdeu !!'),nl,
    write('Gostaria de jogar de novo ? (y,n)'),nl,
    write('>'),
    read(Desire),
    play(Desire).

no17(1) :- nl, write('Você tentou atacar a Onça-Pintada pelas costas, porém ela conseguiu ouvir seu pulo e desviou do seu ataque, você caiu fora da caverna... '), nl,
		write('A Onça-Pintada vem em sua direção porém, uma sombra aparece sobre você… É sua mamãe e o cachorro caramelo! '), nl,
    write('A Onça é muito poderosa, porém 3 adversários já parece ser um número grande para ela, então ela volta para caverna... '), nl,nl,
    write('Você GANHOU !!'),nl,
    write('Gostaria de jogar de novo ? (y,n)'),nl,
    write('>'),
    read(Desire),
    play(Desire).

no17(2) :- nl, write('A Onça seguiu para fora da caverna, você então decide terminar de investigar a caverna... Porém não encontra mais ninguém...'), nl,
		write('Opa! Uma pegada de lobo-guará!! Provavelmente sua mãe esteve por aqui há pouco tempo!'), nl,
		write('1. Esperar um tempo para sair da caverna e seguir em direção à tenda'), nl,
		write('2. Esperar que sua mãe apareça novamente na caverna por tempo indeterminado'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	  	read(Alternative).

/*  no18(Alternative). */

no18(1) :- no8(2).

no18(2) :- nl, write('Você esperou tanto que a Onça voltou e você não teve como fugir...'), nl,
		write('Você morreu pelo ataque da Onça! '), nl,nl,
    write('Você perdeu !!'),nl,
    write('Gostaria de jogar de novo ? (y,n)'),nl,
    write('>'),
    read(Desire),
    play(Desire).


no19(1) :- nl, write('Ao entrar no incêndio...A visão está baixa por conta da fumaça, você não vê sinais da sua mãe, porém avista um sagui preso numa árvore em chamas.'), nl,
		write('1. Salvar a vida do sagui.'), nl,
		write('2. Dar meia volta e sair do incêndio.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no20(Alternative).

no19(2) :- no10(2).

no20(1) :- incrementar_contador,
		nl, write('Você salva bravamente o sagui que acaba de cair de um tronco flamejante e iria se esborrachar no chão.'), nl,
		write('1. Perguntar se o sagui viu sua mãe.'), nl,
		write('Faça sua escolha:'),nl,
		write('>'),
	    read(Alternative),
	    no21(Alternative).

no20(2) :- decrementar_contador,
		no10(2).

no21(1) :- nl, write('O sagui disse que viu sua mamãe nos arredores da caverna, e para lá você vai...'),
		no16(1).

/*decrementar aqui*/
no22(1) :- nl, write('Seu menino mal educado.'), nl,
        write('Não conte comigo para sua jornada'), nl,
        write('E boa sorte achando sua mãe sozinho!'), nl, nl,
        no4(1).
	
no22(2) :- nl, write('Obrigada, garoto'), nl,
        write('A propósito, vi sua mãe fugindo ainda ontem em direção à caverna da onça'), nl,
        write('1. Questionar Cuca a respeito da informação'), nl,
        write('2. Mandar ela ir em seu lugar'), nl,
        read(Alternative),
        no23(Alternative).
	
no22(3) :- nl, write('Chorar lava a alma, mas não vai trazer sua mãe de volta'), nl,
        write('1. Afugentar Cuca'), nl,
        write('2. Oferecer abrigo a Cuca'), nl,
        write('3. Chorar de saudade da mãe'), nl,
        write('>'),
    	read(Alternative),
    	no22(Alternative).
	
no23(1) :- nl, write('Isso mesmo. Algumas horas atrás vi sua mãe saindo da toca às pressas'), nl,
        write('E então, vai querer companhia na sua busca?'), nl,
        write('1. Sim'), nl,
    	write('2. Não'), nl,
    	write('3. Aguardar mais a volta de mamãe'), nl,
    	write('>'),
    	read(Alternative),
    	no25(Alternative).

no23(2) :- nl, write('Não farei sua aventura por você, mas vou te acompanhar'), nl,
        no25(1).
	
no24(1) :- no4(2).

    
no25(1) :- nl, write('No caminho você encontra Carlinhos, a Capivara!'), nl,
		write('Conhecido por ser bastante amigável e guloso'), nl, nl,
		write('Ele se aproxima vagarosamente e pede um pouco de comida em troca de informações sobre sua mãe'), nl,
		write('1. Dar comida'), nl,
		write('2. Poupar comida'),nl,
		write('>'),
		read(Alternative),
		no26(Alternative).
		
no25(2) :-  nl, write('Não preciso da companhia de ninguém. vou sozinho mesmo.'), nl,
        write('Mas estou com tanta fome...'), nl,
        write('Vou me sentar um pouco aqui nessa sombra'), nl,
        no15(1).

no25(3) :- no4(2).

no25(3) :- no4(2).
