:- module(helpers, [resposta_charada/1, startcharada/1,
    inicializar_contador/0,incrementar_contador/0,decrementar_contador/0,verificar_contador/0, fim_jogo/0, limpa_tela/0, init_ranking/0, 
	sum_ranking/0, sub_ranking/0, write_ranking/0,name_ranked/1, resposta_charada_jaguatirica/1, startcharada_jaguatirica/1]).

use_module(menu).

:- dynamic contador/1.
:- dynamic dificuldade/1.
:- dynamic ranking/1.
:- dynamic name_ranked/1.

limpa_tela :-
	write('\33\[2J').

inicializar_contador :-
    retractall(contador(_)),
    assert(contador(0)).

incrementar_contador :-
    contador(ValorAtual),
    NovoValor is ValorAtual + 1,
    retract(contador(_)),
    assert(contador(NovoValor)).

decrementar_contador :-
    contador(ValorAtual),
    NovoValor is ValorAtual - 1,
    retract(contador(_)),
    assert(contador(NovoValor)).

verificar_contador :-
    contador(Valor),
    ( Valor =:= 0 ->
        write("Você foi um lobo-guará neutro!"), nl
    ; Valor > 0 ->
        write("Você foi um lobo-guará bom!"), nl
    ; Valor < 0 ->
        write("Você foi um lobo-guará mal!"), nl
    ).

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
		sub_ranking,
		startcharada(Diminuitentativa)
	).

/*  tela de derrota do no4 */
startcharada(0):-

	nl, write('As Emas ficaram revoltadas com você, e te expulsaram da região '), nl,
	write('Você morreu de fome '), nl,nl,
	write('Você perdeu !!'),nl,
	verificar_contador,
	write_ranking,
	write('Gostaria de jogar de novo ? (y,n)'),nl,
	write('>'),
	read(Desire),
	play(Desire).

fim_jogo :-
	write('Você perdeu !!'),nl,
	verificar_contador,
	write_ranking,
	write('Gostaria de jogar de novo ? (y,n)'),nl,
	write('>'),
	read(Desire),
	play(Desire).

init_ranking :-
	retractall(ranking(_)),
	assert(ranking(0)).

sum_ranking :-
	ranking(Pontuacao),
	NovaPontuacao is Pontuacao + 60,
	retract(ranking(_)),
	assert(ranking(NovaPontuacao)).

sub_ranking :-
	ranking(Pontuacao),
	NovaPontuacao is Pontuacao - 8,
	retract(ranking(_)),
	assert(ranking(NovaPontuacao)).
	
write_ranking :-
	ranking(Pontuacao),
	name_ranked(Name),
	string_upper(Name, Code),
	open('ranking.txt', append, Out),
	write(Out, Code), write(Out, ' -> '), 
	write(Out, Pontuacao), write(Out, ' '), 
	write(Out, 'PONTOS'),
	write(Out, '.'), write(Out, '\n'),
	close(Out).
	

:- export(dificuldade/1).

resposta_charada_jaguatirica(20).

startcharada_jaguatirica(Tentativas):-
	
	Tentativas>0,
	nl, write('Ao fim da tarde, um passarinho estava voando e contou 20 arvores de uma floresta a sua direita. Quando ele estava voltando, ele contou 20 arvores a sua esquerda. Quantas arvores ele contou no total???'), nl,
	write('Escreva a resposta >'),
	resposta_charada_jaguatirica(Respostacharada),
	read(Guess),
	(   Guess == Respostacharada
	->  write('Resposta Correta.'),no35(1)
	;	write('Resposta Errada.'),no35(2)
	).

:- export(ranking/1).
:- export(name_ranked/1).

