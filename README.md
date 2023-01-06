# Brachyurus

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo (de acordo com a Planilha de Divisão dos Grupos)**: 05<br>
**Paradigma**: Lógico<br>

## Alunos
|Matrícula | Aluno |
| -- | -- |
| 19/0142421  | Artur Vinicius Dias Nunes |
| 19/0085291  | Caio César Oliveira |
| 18/0123203 | João Pedro Alves da Silva Chaves |
| 18/0123459  | João Vitor de Souza Durso |
| 19/0128712  | Leticia Assunção Aires Moreira |
| 19/0111836  | Luan Vasco Cavalcante |
| 19/0044390  | Victor Rayan Adriano Ferreira |
| 19/0011602  | Christian Fleury Alencar Siqueira |

## Sobre 
O presente projeto foi desenvolvido durante a disciplina de Paradigmas de Programação do curso de Engenharia de Software da Universidade de Brasília com o intuito de aplicar conhecimentos adquiridos no módulo de paradigma lógico.

O jogo construído se inicia quando o personagem principal Chrysocyon Brachyurus, mais comumente conhecido como Lobo Guará, acorda em sua toca e nota a ausência de sua mãe.
Após dias aguardando seu retorno, o lobinho decide ir a seu encontro, apesar das inúmeras ameaças dispostas no mapa.

O andamento do jogo e a história final são diretamente influenciados pelas decisões do jogador com relação às possíveis escolhas de Brachyurus, de modo que o reencontro do filhote e sua mãe é uma das várias possíveis conclusões do jogo.

## Screenshots
![image](https://user-images.githubusercontent.com/69814362/210113370-2edf46e8-c4f6-4d12-aad2-ac241c9f6d2b.png)

## Instalação 
**Linguagens**: Prolog<br>
**Tecnologias**: VS Code e Prolog<br>
Primeiramente, é preciso ter o Prolog instalado na máquina. Uma versão simplificada da instalação no Ubuntu é:
```c
sudo apt-add-repository ppa:swi-prolog/stable
sudo apt-get update
sudo apt-get install swi-prolog
```
Para rodar a aplicação, basta digitar no terminal o comando:
```c
swipl -s Brachyurus.pl
```
Em seguida, digite:
```c
play.
```

## Uso 
### Como jogar Brachyurus?
Avance pela história selecionando uma das opções disponíveis, a fim de sobreviver nessa incrível jornada!
Cada alternativa será representada por um número inteiro (1, 2, 3, 4...), basta escolher e digitar no terminal.
Além disso, **é importante que o número da alternativa esteja acompanhado por um ponto final.** Ex: 2.
Por fim, pressione _enter_ caso queira retornar ao menu. Boa sorte!

### Menu
Na tela de menu, o jogador pode digitar:<br>
**1**, para iniciar o jogo;<br>
**2**, para visualizar o tutorial in-game;<br>
**3**, para entender sobre a história do jogo e<br>
**4**, para sair do jogo.

## Vídeo
https://youtu.be/jDLyASdhK7s
<!--Adicione 1 ou mais vídeos com a execução do projeto.
Procure: 
(i) Introduzir o projeto;
(ii) Mostrar passo a passo o código, explicando-o, e deixando claro o que é de terceiros, e o que é contribuição real da equipe;
(iii) Apresentar particularidades do Paradigma, da Linguagem, e das Tecnologias, e
(iV) Apresentar lições aprendidas, contribuições, pendências, e ideias para trabalhos futuros.
OBS: TODOS DEVEM PARTICIPAR, CONFERINDO PONTOS DE VISTA.
TEMPO: +/- 15min-->

## Participações

|Nome do Membro | Contribuição | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) |
| -- | -- | -- |
| Artur Vinicius Dias Nunes  | 1. Funcionalidades adicionadas:<br>- [Adição do nó 26 ao nó 35 na história do jogo](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/8/commits)<br>- Adição de itens no jogo (Colaboração com o João Vitor Durso e com o João Pedro) | Excelente |
| Caio César Oliveira | 1. Funcionalidades adicionadas:<br>- [Adição da dificuldade no jogo](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/5)<br>- [Adição do caráter do jogador](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/2/commits)<br>- [Adição de nós da história do jogo](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/2/commits)<br>2. Funcionalidades revisadas:<br>- [Limpar a tela do usuário](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/6/commits)<br>- [Adição de nós da história do jogo](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/1/files#diff-1dae46e30620ae1658e8d2f196e0555286d680ecc71bc32600e69402b7bbbad3)| Excelente |
| João Pedro Alves da Silva Chaves | 1. Funcionalidades adicionadas:<br>- [Adição do nó 6](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/1)<br>- [Adição do conjunto de nós da caverna](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/3)<br>2. Funcionalidades revisadas:<br>- [Ranking do Jogo](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/7)<br>- [Adição do nó 26](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/8)| Excelente  |
| João Vitor de Souza Durso | 1. Funcionalidades adicionadas:<br>- Adição de nós. <br>- Adição de itens no jogo. <br>- Adição de mochila para o jogador carregar itens. <br> - Criação de histórias para utilizar os itens no jogo. <br>- Remoção de warnings. <br> - Revisão do texto do jogo. <br> - Atualizações do README. <br> 2. Funcionalidades revisadas:<br> - Nós 26 ao 35. <br>  | Excelente |
| Leticia Assunção Aires Moreira | 1. Funcionalidades adicionadas: <br>- Adição do nó 7 <br>- Adição do nó 22 <br>- Adição do nó 23 <br>- Adição do nó 24 <br>- Adição do nó 25 <br>- Adição da Função limpa_tela <br>- Adição da estrutura inicial do menu (colaboração com a Christian) <br>- Criação do README <br>| Excelente |
| Luan Vasco Cavalcante | Responsável pela ideia inicial do jogo e pelo primeiro nó baseado no jogo que está no aprender. Fez a introdução do jogo e nós. | Excelente |
| Victor Rayan Adriano Ferreira |1. Funcionalidades adicionadas:<br>- Adição de nós. <br>- Minigame dentro do nó(charada) <br> - Criação de modules do projeto <br>- Remoção de warnings <br> - Ranking do game em arquivo <br> | Excelente |
| Christian Fleury Alencar Siqueira | 1. Funcionalidades adicionadas:<br>- Adição do nó 19 <br>- Adição do nó 20 <br>- Adição do nó 21 <br>- Adição da estrutura incial do menu (colaboração com a Leticia) <br> - Adição do tutorial <br> 2. Funcionalidades revisadas:<br>- [Dificuldade](https://github.com/UnBParadigmas2022-2/2022.2_G5_Logico_Brachyurus/pull/5)| Excelente |

## Outros 
<!---Quaisquer outras informações sobre o projeto podem ser descritas aqui. Não esqueça, entretanto, de informar sobre:
(i) Lições Aprendidas;
(ii) Percepções;
(iii) Contribuições e Fragilidades, e
(iV) Trabalhos Futuros.-->
Com este trabalho foi possível aprender muito sobre Prolog e como funciona o pensamento de programação lógico. <br> 

Melhorias almejadas: <br>
    - Lista de amigos feitos para o jogador conseguir chamá-los em alguma situação conveniente; <br>
    - Dar algumas dicas durante o jogo sobre alguns princípios que podem te levar para a vitória; <br>
    - Adicionar mais nós para dificultar mais ainda a vitória; <br>
    - Adicionar mais itens durante o jogo e mais nós para utilizá-los; <br>
    - Adicionar probabilidade na obtenção dos itens; <br>
    - Interface gráfica. <br>

## Fontes
<!---Referencie, adequadamente, as referências utilizadas.
Indique ainda sobre fontes de leitura complementares.
-->
> FRUEHWIRTH, Thom; WIELEMAKER, Jan; KONINCK, Leslie. SWI Prolog Reference Manual 6.2.2. [S. l.]: Books on Demand, 2012. Disponível em: https://www.swi-prolog.org/. Acesso em: 30 dez. 2022.

> Introdução à Linguagem Prolog - Parte 1. Disponível em: https://www.youtube.com/watch?v=omLANiMqbuY&t=1s. Acesso em: 30 dez. 2022.
