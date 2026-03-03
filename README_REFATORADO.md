![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?logo=dart&logoColor=white)

---

# Refatoração do Projeto Flutter – Estrutura Modular com Separação de Responsabilidades

## Visão Geral

O projeto passou por um processo de **refatoração estrutural** com o objetivo de:

* Aplicar princípios de organização arquitetural
* Separar responsabilidades (Single Responsibility Principle)
* Melhorar legibilidade e manutenção
* Tornar os componentes reutilizáveis
* Aproximar o código de um padrão profissional de desenvolvimento Flutter

O código originalmente estava concentrado em um único arquivo contendo toda a estrutura do `Scaffold`. Após a refatoração, o projeto foi modularizado em **páginas e widgets independentes**, organizados em diretórios específicos.

---

# Estrutura Após Refatoração

```
lib/
│
├── main.dart
├── app.dart
│
├── pages/
│   └── exemplo_scaffold_page.dart
│
└── widgets/
    ├── app_bar_topo.dart
    ├── barra_navegacao.dart
    ├── body_conteudo.dart
    ├── botao_adicionar.dart
    ├── card_conteudo.dart
    ├── item_lista.dart
    └── menu_hamburger.dart
```

---

# O Que Foi Refatorado

## Separação do `main` e da Configuração do App

### Antes

O `MaterialApp` estava declarado diretamente no mesmo arquivo que continha toda a interface.

### Depois

* `main.dart` → Responsável apenas por iniciar a aplicação.
* `app.dart` → Responsável por configurar o `MaterialApp`.

Isso isola o ponto de entrada da aplicação da configuração estrutural do app.

---

## Extração da Página Principal

O `Scaffold` que antes estava no mesmo arquivo foi movido para:

```
pages/exemplo_scaffold_page.dart
```

Agora temos uma **página dedicada**, tornando possível:

* Reutilizar a estrutura
* Criar rotas futuramente
* Evoluir para múltiplas telas

---

## Componentização do Scaffold

O `Scaffold` foi decomposto em widgets menores e independentes:

| Elemento Original    | Novo Arquivo           |
| -------------------- | ---------------------- |
| AppBar               | `app_bar_topo.dart`    |
| Body                 | `body_conteudo.dart`   |
| Card interno         | `card_conteudo.dart`   |
| Itens da lista       | `item_lista.dart`      |
| FloatingActionButton | `botao_adicionar.dart` |
| BottomNavigationBar  | `barra_navegacao.dart` |
| Menu (ícone)         | `menu_hamburger.dart`  |

---

# Melhorias Técnicas Obtidas

## 1. Aplicação do Princípio da Responsabilidade Única (SRP)

Cada widget agora possui uma única responsabilidade:

* `AppBarTopo` → controla apenas o topo
* `BodyConteudo` → controla apenas o corpo
* `CardConteudo` → controla apenas o card
* `BotaoAdicionar` → controla apenas o FAB
* `BarraNavegacao` → controla apenas a navegação inferior

---

## 2. Reutilização de Componentes

Componentes como:

* `ItemLista`
* `CardConteudo`
* `BotaoAdicionar`

podem ser reutilizados em outras páginas sem duplicação de código.

---

## 3. Escalabilidade

A nova estrutura permite:

* Adicionar novas páginas facilmente
* Implementar rotas
* Aplicar arquitetura (MVC, MVVM, Clean Architecture)
* Integrar estado global futuramente (Provider, Riverpod, Bloc)

---

## 4. Melhor Organização Visual do Código

Antes:

* Arquivo único com mais de 150 linhas
* Difícil manutenção
* Baixa legibilidade

Depois:

* Arquivos pequenos e objetivos
* Código semântico
* Organização por responsabilidade

---

# Impacto Arquitetural

A refatoração transformou o projeto de:

> Estrutura Monolítica de Tela Única

para:

> Estrutura Modular Orientada a Componentes

Isso aproxima o projeto de padrões reais de desenvolvimento utilizados em aplicações Flutter profissionais.

---

# Conceitos Aplicados

Durante a refatoração foram aplicados:

* StatelessWidget modular
* Composição de widgets
* Separação de responsabilidades
* Organização por camadas (pages / widgets)
* Estrutura escalável

---

# Conclusão

A refatoração não alterou o comportamento visual da aplicação, mas melhorou significativamente:

* Organização
* Manutenibilidade
* Reutilização
* Clareza arquitetural
* Preparação para crescimento futuro

O projeto agora está estruturado de forma didática e profissional, servindo como base sólida para evolução do sistema.

---

