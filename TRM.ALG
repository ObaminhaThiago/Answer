Algoritmo "TRM"
// Disciplina  : Logica de Programação e Algoritimos, Introdução a Sistemas de Informatica, Comunicação Verbal e Escrita, Logica Matematica e Computacional.
// Professor   : Edson Pedro Ferlin, Lucas Rafael Filipak, Renildo Meurer, Daniel Carmago de Lima
// Descrição   : O software, desenvolvido a fim de ser apresentado e avaliado pelos professores, tem o objetivo de entreter.
// Autor(a)    : Gabriel Pereira Martins, Bruno Tiago de Souza
// Data atual  : 04/05/2017
Var

   //**Condições do personagem**//
   c_envenenamento : inteiro
   c_hemoragia : inteiro
   c_tiros : inteiro

   //**Itens**//
   i_machado : logico
   i_bandagem : logico
   i_antidoto : logico
   i_mapa : logico

   //**Controles de sistema**//
   s_salaatual : inteiro
   s_resposta : inteiro
   s_espera : inteiro

Inicio

   //**Definindo que o jogador começa sem nenhum item.**//
   i_machado <- falso
   i_bandagem <- falso
   i_antidoto <- falso
   i_mapa <- falso

   //**Indicando valor para condições, tornando-as inativas**//
   c_envenenamento <- 5
   c_hemoragia <- 5
   c_tiros <- 0 //Condição comulativa e sem contagem regresiva.

   //**-------------INTRODUÇÃO-------------**//
   escreval ("Você acorda em uma sala, sem lembrar de nada que aconteceu, de como você foi parar ali e esse tipo de coisa")
   escreval ("Suas ultimas memorias são de você estar em casa, em sua rotina normal")
   escreval ("Mas você não tem tempo de se desesperar, logo uma voz começa a sair de uma caixa de som acima de uma porta de ferro")
   escreval ("'Você está participando de um experimento agora, eu vou lhe explicar apenas como sair daqui. Você se encontra atualmente em uma das 20 salas contidas neste labirinto'")
   escreval ("'Você deve encontrar seu caminho para sair, sem nenhuma dica, eu acho. Para isso obiviamente devera atravessar estas portas, mas para isso devera utilizar o dispositivo atras de você'")
   escreval ("ao olhar para traz você se depara com uma tela suspensa em um tipo de suporte, exatamente no meio da sala totalmente branca em que você acordou")
   escreval ("")
   leia (s_espera)
   escreval ("'Neste dispositivo você ira encontrar perguntas que devem ser respondidas para abrir a porta, a qual você escolhera se acertar'")
   escreval ("'Para facilitar sua vida as portas são numeradas e contem direção geografica relativa a sua sala atual'")
   escreval ("'Por exemplo, a porta a sua frente é a porta 'Sala-N-13' o que significa que ela é a 13ª sala, e está a norte de você'")
   escreval ("'Porem existem riscos nisso, caso você erre.... é possivel que a sala tenha algum tipo de armadilha a ser disparada'")
   escreval ("'Mas você deve se preocupar mais com a bomba que colocamos dentro do seu corpo hahahaha'")
   escreval ("'Ela será detonada caso você erre a mesma pergunta 2 vezes seguidas'")
   escreval ("'Não tenho que lhe ensinar mais nada, boa sorte....'")
   escreval ("")
   leia (s_espera)
   limpatela

   escreval ("Me diga qual o elemento estranho:")
   escreval ("1 - peixe : piscicultura 2- pássaro : horticultura 3- abelha : apicultura 4 - bicho da seda : sericultura")
   escreval ("")
   leia (s_resposta)
   se (s_resposta = 2) entao
      escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
      escreval ("|Sala-N-13|")
      escreval ("")
      leia (s_salaatual)
      escreval ("A porta então se abre e você entra por ela")
      limpatela
   senao
      escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
      escreval ("Me diga qual o elemento estranho:")
      escreval ("1 - peixe : piscicultura 2- pássaro : horticultura 3- abelha : apicultura 4 - bicho da seda : sericultura")
      escreval ("")
      leia (s_resposta)
      se (s_resposta = 2) entao
         escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
         escreval ("|Sala-13|")
         escreval ("")
         leia (s_salaatual)
         escreval ("A porta então se abre e você entra por ela")
         limpatela
      senao
         escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
         escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
         s_salaatual <- 21
         limpatela
      fimse
   fimse
   //**------------------------------------**//

   //**Estrutura ativa do jogo**//
   repita

      //**Verifica se as condições estão ativas, e realiza o controle delas.**//
      se (c_envenenamento < 5) entao
         c_envenenamento <- c_envenenamento - 1
         se (c_Envenenamento = 0) entao
            escreval ("Os efeitos do veneno já não são suportaveis, a tontura lhe imposibilita de andar, sua garganta que veio inchando aos poucos agora já está praticamente toda fechada impossibilitando você de respirar. Esse foi o fim da linha para você.")
            s_salaatual <- 21
            limpatela
         fimse
      fimse

      se (c_hemoragia < 5) entao
         c_hemoragia <- c_hemoragia - 1
         se (c_hemoragia = 0) entao
            escreval ("O sagramento já foi tanto, a tontura já não é mais suportavel, aos poucos você sente sua vida deixando seu corpo. Este foi o fim da linha para você.")
            s_salaatual <- 21
            limpatela
         fimse
      fimse

      //**Estrutura das salas**//
      escolha (s_salaatual)
      caso (1)
         escreval ("Ao entrar na sala você vê apenas um cartaz posto na parede contraria a porta, as duas paredes láterais são brancas e a sala está vazia, e o cartaz diz 'Está foi provavelmente a pior escolha que você já fez, ADEUS'.")
         escreval ("Mesmo sem entender exatamente o que o cartaz quer dizer você percebe um som, que aos poucos começa a ficar cada vez mais alto, o tic tac de um relogio, quase enlouquecedor.")
         escreval ("As portas se fecham atras de você, as luzes da sala se apagam como em uma pani eletrica, e então uma pequena luz nas laterais da sala se acendem. E então aos poucos surgem uma a uma, explosões de diversos tamanhos")
         escreval ("Elas se aproximam cada vez mais do seu corpo. O calor da sala aumenta incrivelmente rapido até que as chamas passam a atingir seu corpo.")
         escreval ("Você sente pedaços de seu corpo sendo dilacerados e arrancados com violencia devido a explosão")
         escreval ("E lentamente o resquicio de vida que ainda existia deixa seu corpo...")
         escreval ("")
         leia (s_espera)
         s_salaatual <- 21
         limpatela

      caso (2)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Complete a analogia 'Verdade : Tribunal'   -   'Limpeza : _________'")
         escreval ("1- virtude 2- banheiro 3- restaurante 4- porco")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 2) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval ("|Sala-O-1| |Sala-L-3|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("Uma lamina surge a partir da plataforma na qual o painel está apoiado, e corta sua perna, a qual está agora sagrando muito")
            se (c_hemoragia = 5) entao
               c_hemoragia <- 4
            fimse
            escreval ("Complete a analogia 'Verdade : Tribunal'   -   'Limpeza : _________'")
            escreval ("1- virtude 2- banheiro 3- restaurante 4- porco")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 2) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval ("|Sala-O-1| |Sala-L-3|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (3)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Qual palavra não pertence ao grupo?")
         escreval ("1 - Broto 2 - Rosas 3 - Tulipas 4 - Margarida ")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 1) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval ("|Sala-O-2| |Sala-L-4| |Sala-S-7|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("De dentro de um pequeno buraco no pedestal do painel uma bala é disparada. A dor é gigantesca, mas talvez você consiga continuar")
            c_tiro <- c_tiro + 1;
            escreval ("Qual palavra não pertence ao grupo?")
            escreval ("1 - Broto 2 - Rosas 3 - Tulipas 4 - Margarida ")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 1) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval ("|Sala-O-2| |Sala-L-4| |Sala-S-7|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
            se (c_tiro = 3) entao
               s_salaatual <- 21
            fimse
         fimse

      caso (4)
         escreval ("Ao entrar na sala você vê apenas um cartaz posto na parede contraria a porta, as duas paredes láterais são brancas e a sala está vazia, e o cartaz diz 'Está foi provavelmente a pior escolha que você já fez, ADEUS'.")
         escreval ("Mesmo sem entender exatamente o que o cartaz quer dizer você percebe um som, que aos poucos começa a ficar cada vez mais alto, o tic tac de um relogio, quase enlouquecedor.")
         escreval ("As portas se fecham atras de você, as luzes da sala se apagam como em uma pani eletrica, e então uma pequena luz nas laterais da sala se acendem. E então aos poucos surgem uma a uma, explosões de diversos tamanhos")
         escreval ("Elas se aproximam cada vez mais do seu corpo. O calor da sala aumenta incrivelmente rapido até que as chamas passam a atingir seu corpo.")
         escreval ("Você sente pedaços de seu corpo sendo dilacerados e arrancados com violencia devido a explosão")
         escreval ("")
         leia (s_espera)
         s_salaatual <- 21
         limpatela

      caso (5)
         escreval ("Quando você entra na sala você nota a presença de 3 lobos, guardando algo no chão no meio deles.")
         escreval ("O tempo deles virarem foi o suficiente para você distinguir tal objeto. Provavelmente um mapa")
         escreval ("Uma decisão rapida deve ser feita, fugir ou buscar o mapa")
         escreval ("1- Buscar o mapa 2- Fugir")
         escreval ("")
         leia (s_resposta)
         limpatela
         se (i_machado = verdadeiro) e (s_resposta = 1) entao
            escreval ("Sorte que você já tinha achado o machado nas salas anteriores. A cada lobo que pulou em você você contra atacou com o machado")
            escreval ("Sair ileso não foi possivel, mas seu machucados foram superficiais. E então você recolhe o mapa")
            escreval ("Antes de você checar ele você ve que o painel desta sala abre somento ao apertar o botão, sem nenhum tipo de questão a ser respondida")
            escreval ("Sem nenhuma dificuldade você volta a sala anterior, que tambem já tem o painel liberado para a escolha...")
            escreval ("Provavelmente o sistema foi feito para lhe poupar de responder novamente depois de sair daquela sala com os lobos")
            escreval ("")
            leia (s_espera)
            limpatela
            escreval ("Escolha qual sala abrir:")
            escreval (" |Sala-L-10| |Sala-S-13|")
            i_mapa <- verdadeiro
            escreval ("")
            leia (s_salaatual)
            limpatela
         senao
            se (i_machado = falso) e (s_resposta = 1) entao
               se (c_hemoragia = 5) entao
                  c_hemoragia <- 4
               fimse
               escreval ("Você corre por entre os lobos para de qualquer maneira conseguir aquele mapa")
               escreval ("Antes que você possa checar ele você ve que o painel desta sala abre somento ao apertar o botão, sem nenhum tipo de questão a ser respondida")
               escreval ("Então rapidamente você aperta ele e volta pra sala anterior. Ofegante, você fica aliaviado apenas quando a porta fecha separando você dos lobos")
               escreval ("Parando para checar sua situação você se ve um um grande corte do qual muito sangue está vazando. É bom encontrar uma forma de resolver isso logo")
               escreval ("Mas por enquanto escolha qual por abrir")
               escreval ("")
               leia (s_espera)
               limpatela
               escreval (" |Sala-L-10| |Sala-S-13|")
               i_mapa <- verdadeiro
               escreval ("")
               leia (s_salaatual)
               limpatela
            senao
               escreval ("Ao se deparar com os lobos guardando o mapa, e sem ter qualquer maneira de se defender, você aproveita os poucos segundos que a porta fica aberta para voltar para a sala anterior")
               escreval ("De alguma maneira parece que isso já era esperado e você nota que a tela para você destravar a porta se mantem ligada e pronta pra seleção")
               escreval ("Qual porta você deseja abrir?")
               escreval (" |Sala-L-10| |Sala-S-13|")
               escreval ("")
               leia (s_salaatual)
               limpatela
            fimse
         fimse

      caso (6)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("No meio da sala você encontra uma caixa")
         se (i_antidoto = falso) entao
            escreval ("Você abre a caixa e pega o antidoto contido dentra da mesma")
            i_antidoto <- verdadeiro
         fimse
         escreval ("Tendo 'Você é nomeado como programador com um período de avaliação de um ano e seu desempenho será revisto no final do período' em uma linha em uma carta de compromisso avalie as seguintes afirmações.")
         escreval ("I: O desempenho de um indivíduo geralmente não é conhecido no momento da oferta de emprego")
         escreval ("II: Geralmente um indivíduo tenta provar seu valor no período de avaliação.")
         escreval ("1- Tanto I como II estão implícitos 2- Somente a suposição II é implícita 3- Ou I ou II é implícito 4- Nem I nem II estão implícitos")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 1) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval ("|Sala-S-10| |Sala-L-7|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("Tendo 'Você é nomeado como programador com um período de avaliação de um ano e seu desempenho será revisto no final do período' em uma linha em uma carta de compromisso avalie as seguintes afirmações.")
            escreval ("I: O desempenho de um indivíduo geralmente não é conhecido no momento da oferta de emprego")
            escreval ("II: Geralmente um indivíduo tenta provar seu valor no período de avaliação.")
            escreval ("1- Tanto I como II estão implícitos 2- Somente a suposição II é implícita 3- Ou I ou II é implícito 4- Nem I nem II estão implícitos")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 1) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval (" |Sala-S-10| |Sala-L-7|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (7)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Cistite é a infecção de qual dos seguintes?")
         escreval ("1- fígado 2- bexiga urinária 3- pâncreas 4- pulmão")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 2) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval (" |Sala-O-6| |Sala-N-3| |Sala-L-8| |Sala-S-11|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("De dentro de um pequeno buraco no pedestal do painel uma bala é disparada. A dor é gigantesca, mas talvez você consiga continuar")
            c_tiro <- c_tiro + 1;
            escreval ("Cistite é a infecção de qual dos seguintes?")
            escreval ("1- fígado 2- bexiga urinária 3- pâncreas 4- pulmão")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 2) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval (" |Sala-O-6| |Sala-N-3| |Sala-L-8| |Sala-S-11|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
            se (c_tiro = 3) entao
               s_salaatual <- 21
            fimse
         fimse

      caso (8)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Você vê uma caixa grudada em uma das paredes proximas ao painel")
         se (i_bandagem = falso) entao
            escreval ("Dentro da caixa você encontra algumas bandagens, e as leva contigo")
            i_bandagem <- verdadeiro
         fimse
         escreval ("O pai do padre é filho do meu pai. O que eu sou do Padre?")
         escreval ("1-	Filho 2-	Tio 3-	Irmão")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 2) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval (" |Sala-O-7| |Sala-S-12|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("O pai do padre é filho do meu pai. O que eu sou do Padre?")
            escreval ("1-	Filho 2-	Tio 3-	Irmão")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 2) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval (" |Sala-O-7| |Sala-S-12|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (9)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("A Pneumoultramicroscopicossilicovulcanoconiose é:")
         escreval ("I-	A maior palavra da língua portuguesa")
         escreval ("II-	Uma doença que afeta o pulmão")
         escreval ("III-	Uma doença causa por cinzas vulcânicas")
         escreval ("1-	Todas estão corretas 2-	Apenas I e II são corretas 3-	Apenas II e III são corretas 4-	Apenas I é correta")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 3) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval (" |Sala-N-5| |Sala-L-10| |Sala-S-13|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("De dentro de um pequeno buraco no pedestal do painel uma bala é disparada. A dor é gigantesca, mas talvez você consiga continuar")
            c_tiro <- c_tiro + 1;
            escreval ("A Pneumoultramicroscopicossilicovulcanoconiose é:")
            escreval ("I-	A maior palavra da língua portuguesa")
            escreval ("II-	Uma doença que afeta o pulmão")
            escreval ("III-	Uma doença causa por cinzas vulcânicas")
            escreval ("1-	Todas estão corretas 2-	Apenas I e II são corretas 3-	Apenas II e III são corretas 4-	Apenas I é correta")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 3) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval (" |Sala-N-5| |Sala-L-10| |Sala-S-13|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
            se (c_tiro = 3) entao
               s_salaatual <- 21
            fimse
         fimse

      caso (10)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Quando um gás se torna liquido o processo se chama?")
         escreval ("1- condensação 2- evaporação 3- deposição 4- sublimação")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 1) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval (" |Sala-N-6| |Sala-O-9| |Sala-S-14|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("Quando um gás se torna liquido o processo se chama?")
            escreval ("1- condensação 2- evaporação 3- deposição 4- sublimação")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 1) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval (" |Sala-N-6| |Sala-O-9| |Sala-S-14|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (11)
         escreval ("Esta sala está estranhamente vazia. Ao olhar ao redor você nota uma figura humana, em um dos cantos da sala, olhando para a parede, em completo silencio")
         escreval ("Ao tentar falar com ela você nota uma pequena reação corporal. Vagarosamente ela começa a se virar")
         escreval ("Você continua tentando falar, porem sem resposta da parte desta outra pessoa, até que ela se levanta e quando de frente para você é possivel notar uma faca em sua mão.")
         escreval ("Subtamente ela parte para cima de você, sem muito tempo para pensar você tem que escolher entre tentar dialogar novamente ou revidar")
         escreval ("1- Dialogar 2- Revidar")
         escreval ("")
         leia (s_resposta)
         limpatela
         se (i_machado = verdadeiro) e (s_resposta = 2) entao
            escreval ("Não sobrou opção a não ser revidar. Naquele momento era matar ou morrer")
            escreval ("Com um movimento um tanto quanto desajeitado você usa o machado para acertar a lateral do tronco do agressor")
            escreval ("Aproveitando o a reação dele ao golpe você o acerta com o cabo do machado na cabeça, fazendo-o apagar")
            escreval ("Olhando agora, você ve duas portas, e o mesmo dispositivo de sempre no centro da sala, já esperando a escolha de qual porta abrir")
            escreval (" |Sala-S-15| |Sala-N-7|")
            escreval ("")
            leia (s_salaatual)
            limpatela
         senao
            se (i_machado = falso) e (s_resposta = 2) entao
               escreval ("Você tenta revidar com as mãos mas elas são equivalentes para alguem com uma faca afiada.")
               escreval ("A sensação da lamina adentrando seu abdomen e atingindo algum orgão interno vem junto de uma dor estonteante")
               escreval ("Tamanha dor que o faz desmaiar. O que pode ter sido bom, não se sabe o que ele fez com seu corpo depois disso. Mas este é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            senao
               escreval ("O agressor não respondeu a suas tentativas diplomaticas de salvação")
               escreval ("o porque ele agia desta maneira não se sabe, o que você sabe é apenas o que seu corpo sentiu instantes após")
               escreval ("A sensação da lamina adentrando seu abdomen e atingindo algum orgão interno vem junto de uma dor estonteante")
               escreval ("Tamanha dor que o faz desmaiar. O que pode ter sido bom, não se sabe o que ele fez com seu corpo depois disso. Mas este é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (12)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Na Linguagem binária cada letra do alfabeto, cada número e cada caractere especial é feito por uma combinação única de:")
         escreval ("1- 8 bytes 2- 8 caracteres 3- 8 bits 4- 8 quilobytes")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 3) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval (" |Sala-N-5| |Sala-S-16|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("Você aos poucos se sente sufucado, com seu corpo parece pesado e tontura. Até que o gás se discipa")
            se (c_envenenado = 5) entao
               c_envenenamento <- 4
            fimse
            escreval ("Na Linguagem binária cada letra do alfabeto, cada número e cada caractere especial é feito por uma combinação única de:")
            escreval ("1- 8 bytes 2- 8 caracteres 3- 8 bits 4- 8 quilobytes")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 3) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval (" |Sala-N-5| |Sala-S-16|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (13)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Servidores são computadores que provem recursos para outros computadores conectados a...")
         escreval ("1- mainframe 2- supercomputador 3- rede 4- cliente")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 3) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval (" |Sala-N-9| |Sala-S-17|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("Servidores são computadores que provem recursos para outros computadores conectados a...")
            escreval ("1- mainframe 2- supercomputador 3- rede 4- cliente")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 3) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval (" |Sala-N-9| |Sala-S-17|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (14)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Que criatura anda em quatro pernas de manha, duas ao entardecer e três ao anoitecer?")
         escreval ("1- Uma Besta 2-O Macaco 3- O Homem 4- O Oedipus")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 3) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval ("|Sala-N-10| |Sala-L-15| |Sala-S-18|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("Que criatura anda em quatro pernas de manha, duas ao entardecer e três ao anoitecer?")
            escreval ("1- Uma Besta 2-O Macaco 3- O Homem 4- O Oedipus")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 3) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval ("|Sala-N-10| |Sala-L-15| |Sala-S-18|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (15)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Quem me construiu não me quer. | Quem me comprou não irá me usar. | E quem me usará não sabe que precisa de mim. | Quem sou eu?")
         escreval ("1- Caixão 2- Cama de hospital 3- Pergunta 4- Algemas")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 1) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval (" |Sala-N-11| |Sala-O-14|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("A partir de algumas fisuras no pedestal do painel um gás começa a ser liberado.")
            escreval ("Você aos poucos se sente sufucado, com seu corpo parece pesado e tontura. Até que o gás se discipa")
            se (c_envenenado = 5) entao
               c_envenenamento <- 4
            fimse
            escreval ("Quem me construiu não me quer. | Quem me comprou não irá me usar. | E quem me usará não sabe que precisa de mim. | Quem sou eu?")
            escreval ("1- Caixão 2- Cama de hospital 3- Pergunta 4- Algemas")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 1) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval (" |Sala-N-11| |Sala-O-14|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (16)
         escreval ("Ao entrar na sala você vê apenas um cartaz posto na parede contraria a porta, as duas paredes láterais são brancas e a sala está vazia, e o cartaz diz 'Está foi provavelmente a pior escolha que você já fez, ADEUS'.")
         escreval ("Mesmo sem entender exatamente o que o cartaz quer dizer você percebe um som, que aos poucos começa a ficar cada vez mais alto, o tic tac de um relogio, quase enlouquecedor.")
         escreval ("As portas se fecham atras de você, as luzes da sala se apagam como em uma pani eletrica, e então uma pequena luz nas laterais da sala se acendem. E então aos poucos surgem uma a uma, explosões de diversos tamanhos")
         escreval ("Elas se aproximam cada vez mais do seu corpo. O calor da sala aumenta incrivelmente rapido até que as chamas passam a atingir seu corpo.")
         escreval ("Você sente pedaços de seu corpo sendo dilacerados e arrancados com violencia devido a explosão")
         escreval ("")
         leia (s_espera)
         s_salaatual <- 21
         limpatela

      caso (17)
         escreval ("Ao entrar na sala o alto falante diz 'Eu lhe avisei para não entrar novamente nesta sala... agora pague por suas escolhas'")
         escreval ("As portas se fecham atras de você, as luzes da sala se apagam como em uma pani eletrica, e então uma pequena luz nas laterais da sala se acendem. E então aos poucos surgem uma a uma, explosões de diversos tamanhos")
         escreval ("Elas se aproximam cada vez mais do seu corpo. O calor da sala aumenta incrivelmente rapido até que as chamas passam a atingir seu corpo.")
         escreval ("Você sente pedaços de seu corpo sendo dilacerados e arrancados com violencia devido a explosão")
         escreval ("")
         leia (s_espera)
         s_salaatual <- 21
         limpatela

      caso (18)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Você acha uma caixa no pé do apoio do painel que tem a pergunta lhe esperando")
         se (i_machado = falso) entao
            escreval ("Você abre a caixa e encontra um machado, ele pode ser muito util")
            i_machado <- verdadeiro
         fimse
         escreval ("Sendo 'Livro de Culinária : Receitas', então:")
         escreval ("1- manual : instruções 2- filme : comentários 3- revista : assinaturas 4- paperback : edições")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 1) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval (" |Sala-N-14| |Sala-L-19|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("Sendo 'Livro de Culinária : Receitas', então:")
            escreval ("1- manual : instruções 2- filme : comentários 3- revista : assinaturas 4- paperback : edições")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 1) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval (" |Sala-N-14| |Sala-L-19|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (19)
         escreval ("Mais uma sala e mais uma questão aparece no painel")
         escreval ("Artistas são geralmente caprichosos. | Alguns estão frustrados. | Pessoas frustradas são propensas a serem viciadas em drogas. | Com base nestas declarações, quais das seguintes conclusões são verdadeiras?")
         escreval ("1- Alguns artistas podem ser toxicodependente 2- Todas as pessoas frustradas são toxicodependentes 3- Todos os toxicodependentes são artistas 4- Pessoas frustradas são caprichosas")
         escreval ("")
         leia (s_resposta)
         se (s_resposta = 1) entao
            escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
            escreval (" |Sala-O-18| |Sala-L-20|")
            escreval ("")
            leia (s_salaatual)
            escreval ("A porta então se abre e você entra por ela")
            limpatela
         senao
            escreval ("Você falhou, e tem mais uma tentativa... Não queira errar novamente")
            escreval ("Artistas são geralmente caprichosos. | Alguns estão frustrados. | Pessoas frustradas são propensas a serem viciadas em drogas. | Com base nestas declarações, quais das seguintes conclusões são verdadeiras?")
            escreval ("1- Alguns artistas podem ser toxicodependente 2- Todas as pessoas frustradas são toxicodependentes 3- Todos os toxicodependentes são artistas 4- Pessoas frustradas são caprichosas")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 1) entao
               escreval ("O painel brilha em uma leve luz verde e apresenta uma tela para que você escolha qual porta abrir")
               escreval (" |Sala-O-18| |Sala-L-20|")
               escreval ("")
               leia (s_salaatual)
               escreval ("A porta então se abre e você entra por ela")
               limpatela
            senao
               escreval ("Não importa se você duvidou ou não, o tic tac ecoa por dentro do seu corpo")
               escreval ("E em uma fração de segundos você sente seu corpo se separando com a explosão da bomba. Você nem mesmo teve tempo de perceber que estava morrendo. Esse é o fim da linha para você")
               escreval ("")
               leia (s_espera)
               s_salaatual <- 21
               limpatela
            fimse
         fimse

      caso (20)
         escreval ("Não são necessarios nem 2 segundos para você entender o que é esta sala")
         escreval ("Ela é completamente diferente das outras. Apesar de ter as paredes, teto e chão brancos tem algo que faz toda a diferença ali")
         escreval ("No centro da sala em vez de outra tela com mais uma pergunta a ser respondida você encontra uma escada, uma escada vertical que leva a uma escotilha no teto da sala")
         escreval ("Você corre até ela com alegria, por ter chegado ao fim deste maldito labirinto")
         escreval ("O que acontece quando você chega lá em cima já não vem ao caso, o que importa é que todas as armadilhas não lhe pararam")
         escreval ("PARABENS!!")
         escreval ("")
         leia (s_espera)
         s_salaatual <- 21

      caso (21)
         limpatela
         escreval ("GAME OVER")
         //**Caso que sai da estrutura de repetição**//

      fimescolha


      se (s_salaatual <> 21) entao
         //**verifica se o personagem tem os itens e se quer usa-los**//
         se (i_mapa = verdadeiro) entao
            escreval ("  *****  *****  *****  *****  ")
            escreval ("  *   ****   ****   ****   *  ")
            escreval ("  *                        *  ")
            escreval ("  *   ****   ****   ****   *  ")
            escreval ("  *****  *****  ** **  *****  ")
            escreval ("                 * *          ")
            escreval ("                 * *          ")
            escreval ("  *****  *****  ** **  *****  ")
            escreval ("  *   *  *   ****   ****   *  ")
            escreval ("  *   *  *                 *  ")
            escreval ("  *   *  *   ****   ****   *  ")
            escreval ("  ** **  ** **  ** **  ** **  ")
            escreval ("   * *    * *    * *    * *   ")
            escreval ("   * *    * *    * *    * *   ")
            escreval ("  ** **  ** **  ** **  ** **  ")
            escreval ("  *   ****   *  *   *  *   *  ")
            escreval ("  *          *  *   *  *   *  ")
            escreval ("  *   ****   *  *   *  *   *  ")
            escreval ("  ** **  ** **  ** **  ** **  ")
            escreval ("   * *    * *    * *    * *   ")
            escreval ("   * *    * *    * *    * *   ")
            escreval ("  ** **  ** **  ** **  ** **  ")
            escreval ("  *   *  *   ****   *  *   *  ")
            escreval ("  *   *  *          *  *   *  ")
            escreval ("  *   *  *   ****   *  *   *  ")
            escreval ("  ** **  ** **  *****  *****  ")
            escreval ("   * *    * *                 ")
            escreval ("   * *    * *                 ")
            escreval ("  ** **  ** **  *****  *****  ")
            escreval ("  *   *  *   ****   ****   *  ")
            escreval ("  *   *  *                 *  ")
            escreval ("  *   *  *   ****   ****   *  ")
            escreval ("  *****  *****  *****  *****  ")
            escreval ("1 - Fechar")
            escreval ("")
            leia (s_espera)
            limpatela
         fimse
         limpatela

         se (i_antidoto = verdadeiro) e (c_envenenamento < 5) entao
            escreval ("Quer usar o antidoto que achou para parar os efeitos do veneno? (1- Sim / 2 - Não)")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = ) entao
               escreval ("O antidoto tem um efeito incrivelmente rapido, você aos poucos deixa de sentir os efeitos do veneno")
               c_envenenamento <- 5
               limpatela
            fimse
         fimse

         se (i_bandagem = verdadeiro) e (c_hemoragia < 5) entao
            escreval ("Quer usar as bandagens que achou para parar seu sangramento? (1- Sim / 2 - Não)")
            escreval ("")
            leia (s_resposta)
            se (s_resposta = 1) entao
               escreval ("Você usa as bandagens e consegue de forma precaria parar o sagramento")
               c_hemoragia <- 5
               limpatela
            fimse
         fimse
         limpatela
      fimse

   ate (s_salaatual = 21)

Fimalgoritmo