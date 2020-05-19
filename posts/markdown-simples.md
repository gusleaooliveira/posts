[Menu](../README.md)

# Markdown

Markdown é uma linguagem de marcação, criada por **John Gruber** e **Aaron Swartz**, com o foco de facilmente ser entendida e convertida pra `.html` (posteriormente, também para outros formatos como `.odt`, `.pdf`).

Atualmente o markdown é utilizado em documentações, como os **"README.md"** utilizados no github, e também para trabalhos e criar sites de maneira simples e rápida.

## Criando e rodando o Markdown

Os arquivos **"markdown"** devem ser criados com extensão `.md`.

### Instalando o pandoc

Para converter os arquivos em `.html`, `.pdf` e demais extenções, é necessário baixar os pandoc (mesmo que utilize outras ferramentas, pois as mesmas podem necessitar).

* No Windos, através do [Chocolatey](https://chocolatey.org/):
```powershell
choco install pandoc
```
É recomendado também instalar algumas extenções:
```powershell
choco install rsvg-convert python miktex
```



* No Mac, via briew:
```bash
brew install pandoc
```

Outras extenções requisitadas são:
```bash
brew install pandoc-citeproc
```

E também:
```bash
brew install librsvg python homebrew/cask/basictex
```

> A página de downloads é esta [aqui](https://pandoc.org/installing.html), ondem podem ser encontradas mais maneiras de instalar.

* No linux, baixe o arquivo `.deb` e rode com o gdebi (instalado com o comando `sudo apt install gdebi`).


## Maneiras de criar o Markdown

Temos duas  maneiras criar o markdown:

1. Via **código**, de maneira a mostrar seu código.

> Para que seja exibida em um modo preview, os editores tem extenções, como no caso do VSCode, que tem a extensão `Markdown Preview Enhanced`, que instalando e pressionando `ctrl+shift+v` vai abrir o **"Preview"**, ficando como na imagem abaixo:
> ![Imagem VS](img/vscode.png)

2. Via modo **gráfico**, de maneira a esconder o código.

Para quem quer escolher esta maneira, uma ferramenta que possibilita isso é o **Typora**, que pode ser encontrado [aqui](https://typora.io/).

Para baixar no Windows e Mac basta ir na área de download, e instalar.



No linux, abra o terminal com `ctrl+alt+t` e rode os seguintes comandos:

```bash
# or run:
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
# add Typora's repository
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
# install typora
sudo apt-get install typora
```

O Resultado da tela, após baixar, deve ser algo como:

![Imagem Typora](img/typora.png)

> É recomendado que em ambos os casos o [pandoc](https://pandoc.org/installing.html).
>
> Em ambos, é possivel converter para o formato desejado.


## Primeiros passos

Crie uma pasta **estudoMarkdown** e crie um arquivo `exemplo.md`.

Abra a pasta e o arquivo (utilizarei o vscode, mas pode ser feito no typora que tem comandos e será tudo gráfico).

### Comandos
#### Parágrafos

Para novos Parágrafos devemos digitar `enter`, para criar uma nova linha, sendo que entre cada parágrafo **devem** existir novas linhas entre cada parágrafo, ficando:

```markdown
Novo parágrafo, pode ser extremamente curto. Abaixo segue um lorem ipsum:

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
```

Ficando:

Novo parágrafo, pode ser extremamente curto. Abaixo segue um lorem ipsum:

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


#### Títulos

Os Títulos, que vão de 1 até 6, são jogos da velha, como é mostrado abaixo:

```markdown
# Título 1
## Título 2
### Título 3
#### Título 4
##### Título 5
##### Título 6   
```
Com o resultado ficaria:

# Título 1
## Título 2
### Título 3
#### Título 4
##### Título 5
##### Título 6   

Os títulos vão do mais importante (principal), que é o `#` único, e vai até o de menor valor `######`. **Todos** devem ser separados por um espaço do texto.

#### Enfatizar
Para deixar um texto em negrito (`**` ou `__` antes e depois do texto), itálico (`*` ou `_` antes e depois do texto) ou riscado (`~~` antes e depois do texto) basta:
```markdown
Meu texto de exemplo, __parte__ está em **negrito**.

Parte do *meu* texto está em _itálico_

Texto ~~riscado~~.
```  

Com o resultado ficando:

Meu texto de exemplo, __parte__ está em **negrito**.

Parte do *meu* texto está em _itálico_

Texto ~~riscado~~.



***

# Criador
Olá me chamo Gustavo, e criei este material, para mais informações, clique nos links abaixo:

* [LinkTree](https://www.linktree.com.br/gusleaooliveira)


* Disponível em : [Repositório de exercícios](../README.md)
