![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)

# Exemplo de Layout em Flutter — Aula Prática

Este repositório contém um exemplo didático de interface em Flutter, desenvolvido em sala de aula, com o objetivo de apresentar de forma prática e progressiva os fundamentos do sistema de layout do Flutter.

O código demonstra como a árvore de widgets organiza a interface a partir do princípio:

```
Constraints → Size → Position
```

Explorando os principais widgets de composição visual utilizados no desenvolvimento de aplicativos móveis.

---

## Objetivo Educacional

O projeto foi construído para apoiar o ensino de desenvolvimento de interfaces (UI) em Flutter, permitindo que o aluno:

* visualize claramente a hierarquia de widgets;
* compreenda como tamanhos, espaçamentos e alinhamentos são definidos;
* reconheça padrões comuns de layout usados em aplicações reais.

---

## Conteúdos Abordados no Código

---

### Sistema de Layout — Parte 1

O exemplo cobre os fundamentos do layout no Flutter por meio dos seguintes elementos:

#### • Constraints → Size → Position

* Evidenciado pelo uso de `Container` com `width: double.infinity`, `padding` e inserção em um `Scaffold`.

#### • Container

* Utilizado como base do corpo da tela, definindo cor, largura e espaçamento interno.

#### • Padding

* Aplicado tanto no `Container` principal quanto internamente ao `Card`.

#### • SizedBox

* Usado para controle explícito de espaçamento vertical entre widgets.

#### • Center / Alinhamento

* O alinhamento é trabalhado por meio de:

  * `textAlign`
  * `centerTitle`
  * Estrutura da `Column`

---

### Sistema de Layout — Parte 2

A segunda parte do sistema de layout é explorada com composição e alinhamento:

#### • Column

* Utilizada como estrutura principal do corpo da tela.

#### • MainAxisAlignment

* Implícito na organização vertical da `Column` (fluxo padrão).

#### • CrossAxisAlignment

* Explicitamente utilizado dentro do `Card` (`CrossAxisAlignment.start`).

#### • Prática: Cards Informativos

Implementação de um `Card` estilizado contendo:

* título;
* lista de itens (`ListTile`);
* ícones e texto;
* borda personalizada;
* elevação (`elevation`);
* padding interno.



