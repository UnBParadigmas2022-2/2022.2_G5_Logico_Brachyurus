:- module(helpers, [resposta_charada/1, startcharada/1]).

use_module(menu).

resposta_charada(195).

startcharada(Tentativas):-
	
	Tentativas>0,
	nl, write('Pensei em um número e somei 35. Depois Tirei 17 e cheguei ao número 213. o numero que pensei foi ???'), nl,
	write('Escreva a resposta >'),
	resposta_charada(Respostacharada),
	read(Guess),
	(   Guess == Respostacharada
	->  write('Resposta Correta.'),no5(1)
	;   Diminuitentativa is Tentativas-1,
		write('Resposta Errada, você tem '),
		write(Diminuitentativa), 
		write(' tentativas restantes'), nl,nl,
		startcharada(Diminuitentativa)
	).

/*  tela de derrota do no4 */
startcharada(0):-

	nl, write('As Emas ficaram revoltadas com você, e te expulsaram da região '), nl,
	write('Você morreu de fome '), nl,nl,
	write('Você perdeu !!'),nl,
	verificar_contador,
	write('Gostaria de jogar de novo ? (y,n)'),nl,
	write('>'),
	read(Desire),
	play(Desire).