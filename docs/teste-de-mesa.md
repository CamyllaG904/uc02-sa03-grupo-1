# Teste de mesa — Grupo 01 · Base Stella Maris

> **MODELO DE REFERÊNCIA.** Os valores de **entrada** já estão preenchidos com o cartão do grupo.
> Tudo o que está como `____` é para **vocês calcularem na mão**, sem olhar a saída do programa. Só depois comparem (seção final).
> Copie para `docs/`. Se precisarem de mais linhas, acrescentem.

**Código de autenticidade:** `SA03S-G01-3045` · **Responsável pelo teste de mesa:** warley josé soares cavalcante.

## Constantes do cartão (usadas em todas as contas)

| Constante | Valor |
|---|---|
| Pagamento por entrega | R$ 5,00 |
| Meta semanal | 35 entregas |
| Meta mínima | 23 entregas |
| Bônus de meta | R$ 50,00 |
| Desconto por cancelamento | R$ 10,00 |

Entregadores do teste, segundo o cartão: **303** e **304**.

---

## Teste 1 — entregador de código 303 (Marília)

**Dados de entrada (do cartão):**

| Código | Nome | Cancelamentos | Posição `i` no vetor/matriz |
|---|---|---|---|
| 303 | Marília | 2 | ____ |

### Parte A — acumulando as entregas da semana (laço dos dias)

| Passo | `dia` (índice) | Dia | `entregas[i][dia]` | `totalEntregas` antes | `totalEntregas` depois |
|:-:|:-:|---|:-:|:-:|:-:|
| início | — | — | — | — | __0__ |
| 1 | __0__ | Segunda | 15 | _0___ | __15__ |
| 2 | __1__ | Terça | 7 | __25__ | __22__ |
| 3 | __2__ | Quarta | 4 | __22__ | __26__ |
| 4 | __3__ | Quinta | 6 | __26__ | __32__ |
| 5 | __4__ | Sexta | 7 | __32__ | __39__ |
| fim do laço | — | — | — | — | `totalEntregas` final = _39___ |

### Parte B — cálculos do repasse

Escreva a conta **com os números do cartão** e o resultado.

| Variável | Conta (com os valores) | Resultado |
|---|---|:-:|
| `ganho` | __39_*_R$_5,00_________________ | _R$195,00__ |
| `bonus` | _R$_50,00____________________ | _R$_50,00__ |
| `desconto` | __2_*_R$_10,00_________________ | _20,00___ |
| `repasse` | __195,00 +_R$ 50,00 _-_ R$_20,00________________ | _R$ 225,0o___ |

### Parte C — decisão da situação (na ordem em que o programa testa)

| Ordem | Condição testada (com os valores) | Verdadeira ou falsa? | Parou aqui? |
|:-:|---|:-:|:-:|
| 1ª | __39_>=_35__________________ | _verdadeiro___ | _sim___ |
| 2ª | ____nao_testado_________________ | ____ | __não__ |
| 3ª | (se chegou aqui) ______________________ | ____ | __não__ |

**`situacao` final:** ___meta_atingida________

### Resumo do teste 1

| Total de entregas | Ganho | Bônus | Desconto | Repasse | Situação |
|:-:|:-:|:-:|:-:|:-:|:-:|
| __39__ | __R$ 195__ | _R$ 50___ | _R$ 20___ | _R$ 225___ | __meta semanal atingida__ |

---

## Teste 2 — entregador de código 304 (Caio)

**Dados de entrada (do cartão):**

| Código | Nome | Cancelamentos | Posição `i` no vetor/matriz |
|---|---|---|---|
| 304 | Caio | 2 | __2__ |

### Parte A — acumulando as entregas da semana (laço dos dias)

| Passo | `dia` (índice) | Dia | `entregas[i][dia]` | `totalEntregas` antes | `totalEntregas` depois |
|:-:|:-:|---|:-:|:-:|:-:|
| início | — | — | — | — | __0__ |
| 1 | __0__ | Segunda | 6 | __0__ | _6___ |
| 2 | __1__ | Terça | 3 | __6__ | __9__ |
| 3 | _2___ | Quarta | 2 | __9__ | _11___ |
| 4 | __3__ | Quinta | 1 | __11__ | __12__ |
| 5 | __4__ | Sexta | 1 | __12__ | _13___ |
| fim do laço | — | — | — | — | `totalEntregas` final = _13___ |

### Parte B — cálculos do repasse

Escreva a conta **com os números do cartão** e o resultado.

| Variável | Conta (com os valores) | Resultado |
|---|---|:-:|
| `ganho` | __13 * R$ 5,00____________________ | __R$ 65__ |
| `bonus` | ___R$0,00___________________ | __R$ 0__ |
| `desconto` | __2 * R$_10,00___________________ | __R$20__ |
| `repasse` | __R$ 65,00_+_R$ 0,00 - R$ 20,00__________________ | __R$ 45__ |

### Parte C — decisão da situação (na ordem em que o programa testa)

| Ordem | Condição testada (com os valores) | Verdadeira ou falsa? | Parou aqui? |
|:-:|---|:-:|:-:|
| 1ª | _______13_>=_35_____________ | __falsa__ | __nao__ |
| 2ª | _______13 >= 23_______________ | __falsa__ | __nao__ |
| 3ª | (se chegou aqui) _____13_<_23_______________ | __verdade__ | __sim__ |

**`situacao` final:** __abaixo da__media________

### Resumo do teste 2

| Total de entregas | Ganho | Bônus | Desconto | Repasse | Situação |
|:-:|:-:|:-:|:-:|:-:|:-:|
| _13___ | __R$ 65,00__ | __R$ 0,00__ | __R$ 20,00__ | _R$ 45,00___ | _Abaivo da media_minima__ |

---

## Comparação com a execução do programa

Rodem o programa no Portugol Web Studio, copiem a linha de cada um dos dois entregadores e comparem com o resumo acima.

| Entregador | Campo | Na mão | No programa | Bateu? |
|---|---|:-:|:-:|:-:|
| 303 | Total de entregas | __39__ | _39___ | _sim___ |
| 303 | Ganho | __195__ | __195__ | __sim__ |
| 303 | Bônus | __50__ | _50___ | __sim__ |
| 303 | Desconto | __20__ | __20__ | __sim__ |
| 303 | Repasse | __225__ | __225__ | __sim__ |
| 303 | Situação | __meta semanal atingida__ | __meta atingida__ | __sim__ |
| 304 | Total de entregas | __13__ | __13__ | _sim___ |
| 304 | Ganho | _65___ | __65__ | __sim__ |
| 304 | Bônus | _0___ | __0__ | __sim__ |
| 304 | Desconto | __20__ | __20__ | __sim__ |
| 304 | Repasse | __46__ | __46__ | _sim___ |
| 304 | Situação | __abaixo da media_minima_ | _abaixo da_media_minima_ | __sim
**Se algo não bateu:** o que o grupo investigou ecorrigiu?

 Não teve diferença entre o teste de mesa e o resultado do programa então não foi preciso fazer
correção.
_________________________________________________________________________________________________
