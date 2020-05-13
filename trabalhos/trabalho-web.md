[Menu](../menu.md)

# Design Patterns


# Singleton

O singleton é um que é usado para quando necessitamos de apenas uma instancia de um objeto, como por exemplo, quando temos um objeto que trabalha com um banco de dados, que desejamos que tenha apenas uma instancia criada. Utilizando esse padrão de desenvolvimento temos apenas uma instancia, que será criada na primeira vez que for chamada, e caso seja novamente chamada, retornará a instancia criada anteriormente.

### Exemplo de uso

Vamos criar o objeto **Banco**, que terá como atributos **tabela**, que vai salvar o nome da tabela,  **pessoas**, para salvar a lista de pessoas que será cadastrada e os métodos **inserirPessoa**, que recebe um json com os dados da pessoa que serão salvos na lista de pessoas, **listarPessoas**, que vai listar as pessoas, ou apenas uma, da lista de pessoas, **apagarPessoa**, que apagará determinada pessoa da lista e **alterarPessoas**, que irá alterar os dados de dereminada pessoa.

Tendo isso em mente, ficamos com o seguinte uml:

![Tela mostrando o uml da classe](img/tela-classe.png)

#### Criando a estrutura do singleton

Para definirmos como será a estrutura do **Singlenton**, em javascript, precisamos criar uma variável com *nome* **Singlenton**, que terá atribuido uma **"closure"** que transforma o conteúdo de dentro da função privado e inacessível fora da **"closure"**. Ficará assim:

```javascript
let Singlenton = (() => {
	// Criação da classe aqui dentro
})();
```

Será utilizado aqui as **arrow functions**, no formato:

```javascript
( ) => {
	// Código a ser executado
}
```

Isso será utilizado no lugar de fazer as **funções anonimas**, no formato:

```javascript
function( ) {
	// Código a ser executado
}
```

Dentro dessa **"closure"**, será colocada a váriavel, privada, que terá a instância unica do objeto que será criado.

```javascript
let Singlenton = (() => {
  let instancia; // Instancia unica do objeto
})();
```

Vamos criar nosso objeto, para isso iremos usar a **função construtora**, que ira ser rodada para criar o objeto em si:

```javascript
let Singlenton = (() => {
  let instancia;

  function criarBanco(tabela){
    let objeto = new Object();
    objeto.tabela = tabela;
    objeto.pessoas = new Array();
    objeto.inserirPessoa = (item) => {
      objeto.pessoas.push(item);
    };
    objeto.listarPessoas = (id) =>{
      if(id == undefined){ return objeto.pessoas; }
      else { return objeto.pessoas[id]; }
    };
    objeto.apagarPessoa = (id) =>{
      if(id == undefined){ return null; }
      else { objeto.pessoas.splice(id, 1); }
    };
    objeto.alterarPessoa = (id, valor) =>{
      if(id == undefined){ return null; }
      else { objeto.pessoas[id] = valor; }
    };

    return objeto;
  }
})();
```

Essa função, recebera o nome da tabela, e criará o objeto adicionando os  atributos e métodos descritos anteriormente e retornará esse objeto criado.

Agora vem a parte mais importante, que é a de criar o método, que vai gerenciar as instâncias, que fica assim:

```javascript
let Singlenton = (() => {
  let instancia;

  function criarBanco(tabela){
    let objeto = new Object();
    objeto.tabela = tabela;
    objeto.pessoas = new Array();
    objeto.inserirPessoa = (item) => {
      objeto.pessoas.push(item);
    };
    objeto.listarPessoas = (id) =>{
      if(id == undefined){ return objeto.pessoas; }
      else { return objeto.pessoas[id]; }
    };
    objeto.apagarPessoa = (id) =>{
      if(id == undefined){ return null; }
      else { objeto.pessoas.splice(id, 1); }
    };
    objeto.alterarPessoa = (id, valor) =>{
      if(id == undefined){ return null; }
      else { objeto.pessoas[id] = valor; }
    };

    return objeto;
  }

  return {
    getInstancia: (tabela) => {
      if(!instancia){
        instancia = criarBanco(tabela);
      }
      return instancia;
    }
  }

})();
```

Esse método, verifica se a instância foi criada anteriormente, e caso não cria e a retorna, diferente disso apenas a re retorna.

#### Rodando e testando

Podemos criar dois objetos, e depois compararmos os dois, para exemplificar se são a mesma instância ou não. Gerando a instancia para os dois objetos:

```javascript
let banco1 = Singleton.getInstancia('tbl_exemplo');
let banco2 = Singleton.getInstancia('tbl_exemplo');
```

Comparando se é apenas uma instância do produto:

```javascript
console.log('Instancias iguais? '+(banco1 == banco2));
// Resultado: Instancias iguais? true
```

Inserindo os dados das pessoas, e testando, para demonstrar que é a mesma instancia:

```javascript
banco1.inserirPessoa({ "nome" : "Gustavo Leão", "email": "gus.leaono@gmail.com"});
banco2.inserirPessoa({ "nome" : "Sônia Nogueira", "email": "sonia_leoa69@hotmail.com"});
banco2.inserirPessoa({ "nome" : "João ", "email": "joao_teste@gmail.com"});
```



Mostrando que os dados foram inseridos no banco:

```javascript
console.log('Banco1:');
console.log(banco1.listarPessoas());

console.log('Banco2:');
console.log(banco2.listarPessoas());

/* Resultado:
Banco1:
[ { "nome" : "Gustavo Leão", "email": "gus.leaono@gmail.com"},
  { "nome" : "Sônia Nogueira", "email": "sonia_leoa69@hotmail.com"},
  { "nome" : "João ", "email": "joao_teste@gmail.com"} ]

Banco2:
[ { "nome" : "Gustavo Leão", "email": "gus.leaono@gmail.com"},
  { "nome" : "Sônia Nogueira", "email": "sonia_leoa69@hotmail.com"},
  { "nome" : "João ", "email": "joao_teste@gmail.com"} ]
 */


```

Listando apenas uma pessoa utilizando qualquer uma das instancias:

```javascript
console.log(banco2.listarPessoas(0));
// Resultado: { "nome" : "Gustavo Leão", "email": "gus.leaono@gmail.com"}
```



Apagando uma pessoa utilizando qualquer uma das instancias:

```javascript
banco1.apagarPessoa(1);
```

Alterando a pessoa no índice 1:

```javascript
banco2.alterarPessoa(1, { "nome" : "João Silva", "email": "joao_teste@gmail.com"});
```

Resultado:

```javascript
console.log('Banco1:');
console.log(banco1.listarPessoas());

console.log('Banco2:');
console.log(banco2.listarPessoas());

/* Resultado:
Banco1:
[ { "nome" : "Gustavo Leão", "email": "gus.leaono@gmail.com"},
  { "nome" : "João Silva", "email": "joao_teste@gmail.com"} ]

Banco2:
[ { "nome" : "Gustavo Leão", "email": "gus.leaono@gmail.com"},
  { "nome" : "João Silva", "email": "joao_teste@gmail.com"} ]
 */
```


# Prototype

O **Prototype** é usado para criar objetos com base em um modelo criado anteriormente através de clonagem. O objeto, que usa como base o objeto criado na função construtora, herda todos os seus métodos e atributos. Este **"design pattern"** é muito util quando utilizamos muito um objeto, e queremos apenas acrescentar mais metodos e atributos, criando assim um outro objeto, assim, não necessitando a criação de objetos excessiva.

***

# Criador

Olá me chamo Gustavo, e criei este material, para mais informações, clique nos links abaixo:

* [LinkTree](https://www.linktree.com.br/gusleaooliveira)


* Disponível em : [Repositório de exercícios](https://github.com/gusleaooliveira/materialEstudo)