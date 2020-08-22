# Exercício
Pesquise sobre bibliotecas, frameworks e APIs e responda as perguntas abaixo:

## 1) Há diferença conceitual entre Frameworks e Bibliotecas? Justifique sua resposta.

Enquanto um framework é uma coleção de códigos com foco em  ajudar o programador, tendo códigos prontos para resolver determinadas funções **repetitivas**.
Já biblitecas tem funções/funcionalidades prontas para **resolver** varios **problemas**, já resolvidos, e muito utilizados.
Bibliotecas já tem códigos **auxiliares**, ou **"programas"** prontos para fazer.


Uma bibliteca da linguagem C, é a `math.h` a qual utilizamos o método `sqrt` que calcula a raiz quadrada.

**Código:**
```c
#include <math.h>
#include <stdio.h>

int main(int argc, char const *argv[]){
	
	double calculo = 0;
	int x = 0;

	printf("Digite algum número: \n", );
	scanf("%d", x);
	calculo = sqrt(x);

	getch();
	return 0;
}
```

Um exemple de framework é o `w3.css`, que quando queremos ter o mesmo estilo, como por exemplo um texto centralizado, usamos as classes criadas em css.


```html
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Exemplo</title>
		<link rel="stylesheet" type="text/css" href="https://www.w3schools.com/w3css/4/w3.css">
	</head>
	<body>
		<h3 class="text-center">Título centralizado</h3>
	</body>
</html>
```



## 2) Dê um exemplo de biblioteca bem utilizada no mercado.


Um exemplo de biblioteca é o `jquery` que podemos apagar e mostrar um texto usando a função ja pronta:

```html
<!DOCTYPE html>
<html>
	<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
		  $("button").click(function(){
		    $("p").toggle("texto");
		  });
		});
	</script>
	<style>
		
		.texto {
			display: none;
		}
	</style>
	</head>
	<body>

	<button>Clique me</button>

	<p>Clique no botão para esconder e mostrar este texto.</p>

	</body>
</html>
```


## 3) Dê um exemplo de framework bem utilizado no mercado.

Um exemple de framework é o `w3.css`, que quando queremos ter o mesmo estilo, como por exemplo um texto centralizado, usamos as classes criadas em css.


```html
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Exemplo</title>
		<link rel="stylesheet" type="text/css" href="https://www.w3schools.com/w3css/4/w3.css">
	</head>
	<body>
		<h3 class="text-center">Título centralizado</h3>
	</body>
</html>
```

## 4) O que é uma API? Podemos dizer que API só funciona com Web?

Uma API, ou Interface de Programação de Aplicações, nada mais é do que um backend que pode ser acessado através de uma URI, e que retorna o resultado para uma requisição HTTP.

Assim, reutilizamos os código de terceiros, não precisando reproduzir e podendo ser acessada por uma pagina web, por um aplicativo mobile e/ou por um aplicativo desktop.

> Observações:
>
> As apis, aceitam requisições que peçam dados através do método GET, podem enviar dados através do método POST, e deletando através do método DELETE, tendo outros médotos e que cada api usa de sua maneira.

Para mais sobre api: [Exemplo](https://gusleaooliveira.github.io/posts/trabalhos/o-que-eh-uma-api.html)

## 5) Cite um exemplo de Web API.


Um exemplo de api web é a do Serviços IBGE, que pode retornar uma lista de nomes:

Se fizermos uma requisição para **https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking** ele retorna algo como:

```json
[{
  'localidade': 'BR',
  'sexo': None,
  'res': [
    {'nome': 'MARIA', 'frequencia': 11734129, 'ranking': 1},  
    {'nome': 'JOSE', 'frequencia': 5754529, 'ranking': 2},
    {'nome': 'ANA', 'frequencia': 3089858, 'ranking': 3},
    {'nome': 'JOAO', 'frequencia': 2984119, 'ranking': 4},
    {'nome': 'ANTONIO', 'frequencia': 2576348, 'ranking': 5},
    {'nome': 'FRANCISCO', 'frequencia': 1772197, 'ranking': 6},
    {'nome': 'CARLOS', 'frequencia': 1489191, 'ranking': 7},
    {'nome': 'PAULO', 'frequencia': 1423262, 'ranking': 8},
    {'nome': 'PEDRO', 'frequencia': 1219605, 'ranking': 9},
    {'nome': 'LUCAS', 'frequencia': 1127310, 'ranking': 10},
    {'nome': 'LUIZ', 'frequencia': 1107792, 'ranking': 11},
    {'nome': 'MARCOS', 'frequencia': 1106165, 'ranking': 12},
    {'nome': 'LUIS', 'frequencia': 935905, 'ranking': 13},
    {'nome': 'GABRIEL', 'frequencia': 932449, 'ranking': 14},
    {'nome': 'RAFAEL', 'frequencia': 821638, 'ranking': 15},
    {'nome': 'FRANCISCA', 'frequencia': 725642, 'ranking': 16},
    {'nome': 'DANIEL', 'frequencia': 711338, 'ranking': 17},
    {'nome': 'MARCELO', 'frequencia': 693215, 'ranking': 18},
    {'nome': 'BRUNO', 'frequencia': 668217, 'ranking': 19},
    {'nome': 'EDUARDO', 'frequencia': 632664, 'ranking': 20}
    ]
}]
```

Para ver como ficou o exemplo:




