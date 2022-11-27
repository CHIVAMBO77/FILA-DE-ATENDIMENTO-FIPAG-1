programa { //fila de atendimento do FIPAG
	funcao  inicio () {
		cadeia F[ 8 ], Nuit
    	inteiro ini = 0 , fim = 0 , i, op
    
    	escreva ( "Selecione uma opção: \n" )
    	escreva ( "(1) fila de atendimento normal\n" )
    	escreva ( "(2) fila de atendimento preferencial\n" )
    	escreva ( "(3) Encerrar\n" )
    	leia (op)
    	
    	enquanto (op != 3 ) {
    	    se (op == 1 ) {
    	        // Inserir elemento no final da fila
    	        se (fim == 8 ) {
    	            escreva ( "Fila de atendimento CHEIA!\n" )
    	        }
    	        senao {
    	            escreva ( "Informe sua Nuit: " )
    	            leia (Nuit)
    	            
    	            F[fim] = Nuit
    	            fim = fim + 1
    	            
    	            escreva ( "O cidadao" , Nuit, "foi inserido no final da fila de atendimento!\n" )
    	        }
    	    }
    	    
    	    se (op == 2 ) {
    	        // Remove primeiro/próximo elemento da fila
    	        se (fim == 0 ) {
    	            escreva ( "Fila de atendimento VAZIA!\n" )
    	        }
    	        senao {
    	            escreva ( "O cidadao " , F[ini], " foi removido da fila para atendimento!\n" )
    	            fim = fim - 1
    	            
    	            para (i = 1 ; i <= fim; i = i + 1 ) {
    	                F[i - 1 ] = F[i]
    	            }
    	        }
    	    }
    	    
    	    se (ini != fim) {
    	        // Se a fila não estiver vazia.. imprime os elementos da fila
        	    
        	    escreva ( "\nImprimindo o numero de NUIT..\n" )
        	    para (i = 0 ; i < fim; i = i + 1 ) {
        	        escreva ( "[" , F[i], "] " )
        	    }
        	    escreva ( "\n" )   
    	    }
    	    
    	    escreva ( "\n---------------------\n" )
    	    escreva ( "Selecione uma opção: \n" )
        	escreva ( "(1) Inserir na fila de atendimento\n" )
        	escreva ( "(2) Realizar atendimento do próximo da fila\n" )
        	escreva ( "(3) Encerrar\n" )
        	leia (op)
    	}
    	
    	escreva ( "\nOpção 3 selecionada.. Encerrando o algoritmo...\n" )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1547; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */