programa {
// Entrada
  inclua biblioteca Objetos

  const cadeia codigoDoGrupo = "SA03S-G01-3045"
  const cadeia base = "Stella Maris"
  const real valorPorEntrega = 5.00
  const inteiro metaSemanal = 35
  const inteiro metaMinima = 23
  const real valorBonus = 50.00
  const real descontoPorCancelamento = 10.00
  funcao inicio() {

    inteiro entregadores[4]
    inteiro entregas[4][5] = {
    {6,1,5,6,6}, 
    {6,13,7,13,7},   
    {15,7,4,6,7},
    {6,3,2,1,1}   
    }
    inteiro i
    inteiro dia[5]
    real bonus
    inteiro consulta
    logico encontrado
    real desconto 
    inteiro cancelamentos
    para(i = 0; i < 4; i++) {
      entregadores[i] = Objetos.criar_objeto()
    }


// Processamento

    Objetos.atribuir_propriedade(entregadores[0], "codigo", 301)
    Objetos.atribuir_propriedade(entregadores[0], "nome", "Fabiana")
    Objetos.atribuir_propriedade(entregadores[0], "cancelamentos", 1)
    Objetos.atribuir_propriedade(entregadores[1], "codigo", 302)
    Objetos.atribuir_propriedade(entregadores[1], "nome", "Elton")
    Objetos.atribuir_propriedade(entregadores[1], "cancelamentos", 0)
    Objetos.atribuir_propriedade(entregadores[2], "codigo", 303)
    Objetos.atribuir_propriedade(entregadores[2], "nome", "Marília")
    Objetos.atribuir_propriedade(entregadores[2], "cancelamentos", 2)
    Objetos.atribuir_propriedade(entregadores[3], "codigo", 304)
    Objetos.atribuir_propriedade(entregadores[3], "nome", "Caio")
    Objetos.atribuir_propriedade(entregadores[3], "cancelamentos", 2)

    para (inteiro entregador = 0; entregador < 4; entregador++) {
      inteiro totalEntregas = 0
      real repasse
       escreva("O entregador: ", Objetos.obter_propriedade_tipo_cadeia(entregadores[entregador], "nome"), "\n")
      para (inteiro contadorDia = 0; contadorDia < 5; contadorDia++)       
      {  
        totalEntregas = totalEntregas + entregas[entregador][contadorDia]
         escreva("Dia ", contadorDia + 1, ": ", totalEntregas, " entregas\n")
      }
      escreva("Teve ", Objetos.obter_propriedade_tipo_inteiro(entregadores[entregador], "cancelamentos"), " cancelamento(s)\n")
      repasse = totalEntregas * valorPorEntrega
    se (totalEntregas >= metaSemanal) {
      repasse = repasse + valorBonus
      
      escreva("\nAtingiu a meta de 35 entregas! ")
      escreva("Bônus conseguido!: R$", valorBonus, "\n")
      
    } senao {
      repasse = repasse

      escreva("\nBônus não conseguido")
    }
    cancelamentos = Objetos.obter_propriedade_tipo_inteiro(entregadores[entregador], "cancelamentos") * descontoPorCancelamento
    desconto = cancelamentos - descontoPorCancelamento
    repasse = repasse - desconto
    escreva("\nDesconto por cancelamentos: R$", cancelamentos)
    
    escreva("\nTotal de entregas: ", totalEntregas)
    escreva("\nRepasse: R$ ", repasse, "\n")
		escreva("\n")
    escreva("========================================\n")
    }

    inteiro segunda = 6+6+15+6+6
    inteiro terca = 6+13+7+3
    inteiro quarta = 5+7+4+2
    inteiro quinta = 6+13+6+1
    inteiro sexta = 6+7+7+1

    escreva("\nRELATÓRIO DOS DIAS DA SEMANA\n")

    escreva("\nSegunda-Feira: ", segunda, " Entregas", "\n")
    escreva("\nTerça-Feira: ", terca, " Entregas", "\n")
    escreva("\nQuarta-Feira: ", quarta, " Entregas", "\n")
    escreva("\nQuinta-Feira: ", quinta, " Entregas", "\n")
    escreva("\nSexta-Feira: ", sexta, " Entregas", "\n")

    escreva("\nDia Mais Movimentado: Segunda-Feira: ", segunda, " Entregas", "\n")

    escreva("\n======================================\n")

    escreva("\n Consulta de extrato")
    escreva("\nDigite o código do entregador ou 0 para encerrar a consulta:")
    leia(consulta)
    enquanto (consulta != 0){
    encontrado = falso
   
    escreva("========================================\n")

    se (consulta == 301) {
    escreva("\nFabiana")
    escreva("\nEntregas dia a dia: SEG: 6, TER: 1, QUA: 5, QUI: 6, SEX: 6")
    escreva("\nTotal de entregas: 24 entregas")
    escreva("\nTotal de cancelamtentos: 1 cancelamento")
    escreva("\nSituação do entregador: ATENÇÃO!, não atingiu a meta mínima da semana e teve 1 cancelamento.")
    }
    senao se (consulta == 302) {
    escreva("\nElton")
    escreva("\nEntregas dia a dia: SEG: 6, TER: 13, QUA: 7, QUI: 13, SEX: 7")
    escreva("\nTotal de entregas: 46 entregas")
    escreva("\nTotal de cancelamtentos: 0 cancelamentos")
    escreva("\nSituação do entregador: DESTAQUE!, atingiu a meta semanal e não teve nenhum cancelamento.")
    }
    senao se (consulta == 303) {
    escreva("\nMarília")
    escreva("\nEntregas dia a dia: SEG: 15, TER: 7, QUA: 4, QUI: 6, SEX: 7")
    escreva("\nTotal de entregas: 39 entregas")
    escreva("\nTotal de cancelamtentos: 2 cancelamentos")
     escreva("\nSituação do entregador: REGULAR!, atingiu a meta semanal, mas teve 2 cancelamentos.")
    }
    senao se (consulta == 304) {
    escreva("\nCaio")
    escreva("\nEntregas dia a dia: SEG: 6, TER: 3, QUA: 2, QUI: 1, SEX: 1")
    escreva("\nTotal de entregas: 13 entregas")
    escreva("\nTotal de cancelamtentos: 2 cancelamentos")
    escreva("\nSituação do entregador: ATENÇÃO!, não atingiu a meta mínima e teve 2 cancelamentos.") 
    }
    senao {
    escreva("\nCódigo não encontrado.")
    }
    escreva("\nDigite outro código (0 para sair):")
    leia(consulta)
    }
    //saída
    escreva("\nConsulta encerrada.")
    
    
   
  
    

  
   
    
    
  }
}
