programa
{
		inclua biblioteca Util
		cadeia nome[4]
		cadeia end[4]
		real tel[4]
		real cpf[4]
		inteiro opcao
		real temp
	funcao inicio()
	{	
		zeraArrays()
		menuPrincipal()
		
	}
	funcao zeraArrays(){
		para(inteiro i=0;i<4;i++){
			nome[i]="a"
			end[i]="a"
			tel[i]=0.0
			cpf[i]=0.0
			
		}
	}
	funcao menuPrincipal(){
		escreveLinha()
		escreva("|Escolha uma das op��es abaixo?      |\n")
		escreveLinha()
		escreva("\n1- Cadastrar Pessoa")
		escreva("\n2- Consultar Pessoa")
		escreva("\n3- Exibir Todas as Pessoas Cadastradas\n")
		leia(opcao)
		escolha(opcao){
			caso 1:
			cadastraPessoa()
			pare
			caso 2:
			consultaPessoa()
			pare
			caso 3:
			exibeTodosCadastrados()
		}
	}
	funcao escreveLinha(){
		escreva("--------------------------------------\n")
	}
	funcao cadastraPessoa(){
		
		para(inteiro i=0;i<4;i++){
			limpa()
			escreveLinha()
			escreva("Digite o nome da pessoa ",i+1,": \n")
			leia(nome[i])
			escreva("Digite o endere�o: \n")
			leia(end[i])
			escreva("Digite o n�mero de telefone: \n")
			leia(tel[i])
			escreva("Digite o n�mero do cpf: \n")
			leia(cpf[i])
			escreveLinha()
			
			
		}
		retornaMenu()
		
	}
	funcao consultaPessoa(){
		real numero
		escreva("Escolha a forma de pesquisa\n")
		escreva("1- Para inserir CPF\n2- Para inserir n�mero de telefone\n")
		leia(opcao)
		escolha(opcao){
			caso 1:leia(numero)
			para(inteiro i=0;i<4;i++){
			se(numero==cpf[i]){
				escreveLinha()
				escreva("\nCadastro Encontrado:\n")
				escreva(nome[i],"\n", cpf[i], "\n", tel[i], "\n", end[i], "\n")
				escreveLinha()
					}
				}
				retornaMenu()
			pare
			caso 2:leia(numero)
			para(inteiro i=0;i<4;i++){
					se(numero==tel[i]){
						escreveLinha()
							escreva(nome[i],"\n", cpf[i], "\n", tel[i], "\n", end[i], "\n")
							escreveLinha()
						}
				}
				retornaMenu()
				pare
		
		
		}
		
	}
	funcao exibeTodosCadastrados(){
		para(inteiro i=0;i<4;i++){
			escreveLinha()
			escreva("\n",nome[i], "\n", cpf[i], "\n", end[i], "\n", tel[i], "\n")
			escreveLinha()
		}
		retornaMenu()
	}
	funcao retornaMenu(){
		escreva("Deseja retornar ao menu principal ou sair do programa?\n 1-Retornar ao menu principal \n 2-Sair do programa\n")
		leia(opcao)
		escolha(opcao){
			caso 1:
			menuPrincipal()
			pare
			caso 2:escreva("\nAt� mais")
			Util.aguarde(50)
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta se��o do arquivo guarda informa��es do Portugol Studio.
 * Voc� pode apag�-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2165; 
 * @DOBRAMENTO-CODIGO = [15, 43, 46, 66, 98];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */