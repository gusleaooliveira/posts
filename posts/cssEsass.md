[Menu](../README.md)


> O resultado em SASS deste framework esta localizado [aqui](https://github.com/gusleaooliveira/MRConstrucoesApp/blob/master/resources/sass/hcw.scss).

# Pré css
Primeiro css, será para tirar a margem, o padding e que use o tamanho de borda do box, para todos os elementos:

```sass
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
```

# Cores
## Gradiente
Teremos cor de texto branco e um gradiente da esquerda para a direita com as cores:
* `#FEDA75`
* `#FA7E1E`
* `#D62976`
* `#962FBF`
* `#4F5BD5`

```sass
.gradient {
  background-image: linear-gradient(to right, #FEDA75, #FA7E1E, #D62976, #962FBF, #4F5BD5);
  color: white !important;
}
```

## Lista de cores - Texto preto
Seguem as cores que terão o texto em preto:

```sass
  $listaCoresEscuro: ('ecru': #C1AE7C, 'gray-blue': #628395, 'white': #ffff, 'silver-pink': #D5BBB1, 'baby-blue-eyes': #A1C6EA, 'light-blue': #87CEEB, 'cyan': #009688, 'aqua': #00FFFF, 'light-green': #8BC34A, 'lime': #CDDC39, 'khaki': #F0E68C, 'amber': #FFC107, 'orange': #FF9800, 'light-gray': #F1F1F1, 'gray': #9E9E9E, 'pale-red': #FFDDDD, 'pale-yellow': #FFFFCC, 'pale-green': #DDFFDD, 'pale-blue': #FFFFFF);
```

## Lista de cores - Texto branco
Seguem as cores que terão o texto em preto:

```sass
$listaCoresClaro: ('raisin-black': #272727, 'tumbleweed': #CEA07E, 'eggplant': #5E4352, 'dark-eggplant': #5E4352, 'indigo': #3F51B5, 'blue': #2196F3, 'green': #4CAF50, 'deep-purple': #673AB7, 'red': #F44336, 'pink': #E91E63, 'purple': #9C27B0, 'teal': #009688, 'deep-orange': #FF5722, 'blue-gray':  #607D8B, 'brown': #795548, 'dark-gray': #616161, 'blue-telegram': #35ADE1, 'blue-twitter': #2AA9E0, 'blue-linkedin': #0274B3);
```

## Função para criar
Faremos um mixin, que é uma função, para criar cor de fundo, de texto, e de borda:

```sass
@mixin fundo($lista, $corFundo) {
    @each $nome,
    $valor in $lista {
        .#{$nome},
        .#{$nome}-hover:hover {
            background-color: $valor !important;
            color: $corFundo !important;
        }
        .border-#{$nome},
        .border-#{$nome}-hover:hover{
          border: 1px solid $valor !important;
        }
        .text-#{$nome},
        .text-#{$nome}-hover:hover{
          color: $valor !important;
        }
        .#{$nome}-darker,
        .#{$nome}-darker:hover {
            background-color: darken($valor, 10%) !important;
            color: $corFundo !important;
        }
    }
}
```

E vamos chamar o a função, que foi chamada de fundo com o `include`:

```sass
@include fundo($listaCoresEscuro, black);
@include fundo($listaCoresClaro, white);
```

# Container

Vamos criar um **container**, que terá em todos os lados `8px`, `10px` e `16px` de **padding**:

```sass
.padding-8 { padding: 8px; }
.padding-10 { padding: 10px; }
.padding-16 { padding: 16px; }
```

# Alinhamentos de texto

Adicionar identação e alinhamentos a esquerda, direita, centro e justificado.

```sass
.text-indent { text-indent: 10px; }
.text-center { text-align: center; }
.text-left { text-align: left; }
.text-justify { text-align: justify; }
.text-right { text-align: right; }
```

# Botão

O botão será:
* Sem borda
* Display em linha
* O acima `8px` e a direita `16px`
* Alinhamento ao centro da linha de base
* O conteúdo é cortado e o restante fica invisível
* Nenhuma decoração de texto
* Cor de fundo e de texto conforme as classes de cor
* texto alinhado ao centro
* O cursor vai ser um ponteiro
* Espaço em branco não terá quebra
* Sem linhas de contorno

```sass
.btn {
  border: none;
  display: inline-block;
  padding: 8px 16px;
  vertical-align: middle;
  overflow: hidden;
  text-decoration: none;
  color: inherit;
  background-color: inherit;
  text-align: center;
  cursor: pointer;
  white-space: nowrap;
  outline: none;
}
```

## Botão ocupando toda a tela

O botão ocupará a tela inteira:

```sass
.btn-block { width: 100%; }
```

# Destaque do botão
O botão terá destaque nas bordas:

```sass
.btn:hover {
  box-shadow:
      0 8px 16px 0 rgba(0, 0, 0, 0.2)
      0 6px 20px 0 rgba(0, 0, 0, 0.19);  
}
```


# Entrada de texto

Teremos na entrada de texto:
* Espaço para dentro de `8px`
* Display em bloco
* Sem borda
* Borda em baixo, de um tamanho `1px`, solida e com cor cinza
* Com largura total


# Flutuando a esquerda e a direita

```sass
.float-left  { float: left; }
.float-right { float: right; }
```


# Imagem
## Imagem mediana
Para criar uma imagem mediana com largura `300px` e `240px` de altura:

```sass
.image-medium {
  width: 300px;
  height: 240px;
}
```

# Margens



> O resultado em SASS deste framework esta localizado [aqui](https://github.com/gusleaooliveira/MRConstrucoesApp/blob/master/resources/sass/hcw.scss).

***

# Criador
Olá me chamo Gustavo, e criei este material, para mais informações, clique nos links abaixo:

* [LinkTree](https://www.linktree.com.br/gusleaooliveira)


* Disponível em : [Repositório de exercícios](../README.md)
