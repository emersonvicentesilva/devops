# Implementação do Git Flow

Existem duas formas de implementar o Git Flow, a primeira é utilizar os comandos básicos do Git, a outra é utilizar uma CLI que ajuda a simplificar o fluxo do Git Flow. A título de curiosidade, veremos como implementar o Git Flow utilizando as duas formas.

Para instalar a CLI do Git Flow, escolha uma opção de acordo com seu sistema operacional:

   - *OSX*: brew install git-flow
   - *Linux*: apt install git-flow
   - *Windows*: https://git-scm.com/download/win → Já está incluído no Git a partir da versão 2.5.3.

## Iniciando o Git Flow

A primeira coisa que temos que fazer é criar uma Branch Develop a partir da Branch Master. Para isso, utilize:

Com comando básico do Git:

```bash 
git checkout -b develop 
```
Com a CLI do Git-flow:
```bash 
git flow init
```
A execução deste comando na CLI talvez fará algumas perguntas. Responda tudo afirmativamente e sua Branch Develop será criada.
## Branch Feature
###  Criação de uma feature

Com comandos básicos do Git:
```bash 
git checkout develop
git checkout -b name-feature
```
Com a CLI do Git-flow:
```bash 
git flow feature start name-feature
```
### Finalização de uma feature

Com comandos básicos do Git:
```bash 
git checkout develop
git merge name-feature
```
Com a CLI do Git-flow:
```bash 
git flow feature finish name-feature
```
## Branch Hotfix
### Criação de um Hotfix

Com comandos básicos do Git:
```bash 
git checkout master
git checkout -b name-hotfix
```
Com a CLI do Git-flow:
```bash 
git flow hotfix start name-hotfix
```
### Finalização de um Hotfix

Com comandos básicos do Git:
```bash 
git checkout master
git merge name-hotfix
git checkout develop
git merge name-hotfix
git tag name-hotfix
```
Com a CLI do Git-flow:

git flow hotfix finish name-hotfix

Aqui podemos ver o quão útil é a CLI do Git-flow, pois simplifica o processo e nos ajuda a não cometer erros.
## Branch Release
### Criação de uma Release

Com comandos básicos do Git:
```bash 
git checkout develop
git checkout -b release/1.0.0
```
Com a CLI do Git-flow:
```bash 
git flow release start 1.0.0
```
### Finalização de uma Release

Com comandos básicos do Git:
```bash 
git checkout master
git merge release/1.0.0
git checkout develop
git merge release/1.0.0
git tag 1.0.0
```
Com a CLI do Git-flow:
```bash 
git flow release finish 1.0.0
```
*Pronto*, agora sabemos como utilizar os comandos do Git e a CLI git-flow para aplicarmos o Git Flow na prática!
_fonte: https://www.alura.com.br/artigos/git-flow-o-que-e-como-quando-utilizar?srsltid=AfmBOorlz83rMUno5p2jmie9cxgqZVCwvso-lKgMg1BLDVbLdY1qTh8n_