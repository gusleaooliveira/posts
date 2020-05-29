[Menu](../README.md)

# Projeto

Instalando o nodejs:

```bash
sudo snap install node --channel=latest/edge --classic
```


Inicializando o xampp pelo terminal:
```bash
sudo /opt/lampp/lampp start
```

Inicializando o projeto:

```bash
npm init -y
```

Instalando os pacotes:

* knex
* mysql
* nodemon
* body-parser
* express

```bash
npm i --save-dev knex
npm i --save-dev mysql
npm i --save-dev nodemon
npm i --save-dev body-parser
npm i --save-dev express
```

Criando o script para rodar o nodemon, adicionando no final do `package.json`:

```json
"scripts": {
  "dev": "nodemon server.js"
}
```

Ficando:
```json
{
  "name": "api",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "body-parser": "^1.19.0",
    "express": "^4.17.1",
    "knex": "^0.21.1",
    "mysql": "^2.18.1",
    "nodemon": "^2.0.4"
  },
  "scripts": {
    "dev": "nodemon server.js"
  }
}
```

Crie o `server.js`:

```bash
touch server.js
```

Para rodar o comando criado anteriormente rode:

```bash
npm run dev
```

# Criando o servidor

Importando os módulos:

```javascript
const express = require('express');
const http = require('http');
const bodyParser = require('body-parser');
```

Vamos importar o `knex`, para isso temos:
* O cliente será o **mysql**
* A conexão será:
  * Conectada no  **localhost**
  * Usuário será o **root**
  * A senha será **''**
  * O banco será o **api_rest**

```javascript
const knex = require('knex')({
  client: 'mysql',
  connection: {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'api_rest'
  }
});
```

Criando o app express:

```javascript
let app = express();
```

Vamos usar `json` para receber e enviar dados:
```javascript
app.use(bodyParser.json());
```

## Criando o banco

Criando o banco:
```sql
create database api_rest
```
Criando a tabela de usuários que terá:
* **id:** do tipo `inteiro`, `chave primaria` e `não nulo`
* **nome:** do tipo `texto`, com tamanho **100** e `não nulo`
* **email:** do tipo `texto`, com tamanho **200** e `não nulo`
* **receber:** do tipo `boleano`, com o padrão **verdadeiro** e `não nulo`.
* **duvida:** do tipo `texto`, com tamanho **300** e `não nulo`.

```sql
create table tbl_usuario(
	id int not null primary key auto_increment,
    nome varchar(100) not null,
    email varchar(200) not null,
    receber boolean not null default 1,
    duvida varchar(300) not null
);
```

## Criando as rotas

A rota que vai retornar os dados pelo json:

```typescript
app.get('/usuario', (requisicao, resposta, next) => {
  knex('tbl_usuario').then((dados) => {
    resposta.send(dados);
  }, next);
});
```

A rota que vai receber os dados e enviar para o banco:

```typescript
app.post('/usuario', (requisicao, resposta, next) => {
  knex('tbl_usuario')
    .insert(requisicao.body)
    .then((dados) => {
      resposta.send(dados);
    }, next);
});
```

A rota para deletar o produto pelo id:

```typescript
app.delete('/usuario/:id', (requisicao, resposta, next) => {
  let id = requisicao.params.id;
  knex('tbl_usuario')
    .where('id', id)
    .delete()
    .then(() => {
      resposta.sendStatus(200).send({msg: 'Apagado o usuário de id: '+id});
    }, next);
});
```
Alterar os dados do produto pelo id:

```typescript
app.put('/usuario/:id', (requisicao, resposta, next) => {
  let id = requisicao.params.id;
  knex('tbl_usuario')
    .where('id', id)
    .update(requisicao.body)
    .then((dados) => {
      resposta.sendStatus(200).send(dados);
    }, next);
});
```

Pegando os dados de um único usuário:

```typescript
app.get('/usuario/:id', (requisicao, resposta, next) => {
  let id = requisicao.params.id;
  knex('tbl_usuario')
    .where('id', id)
    .first()
    .then((dados) => {
      res.send(dados);
    }, next);
});
```


## Servidor
Criando o servidor:

```typescript
http.createServer(app).listen(9999, () => {
  console.log('http://localhost:9999/');
});
```

> Caso não esteja rodando rode o comando: `npm run dev`



***

# Criador
Olá me chamo Gustavo, e criei este material, para mais informações, clique nos links abaixo:

* [LinkTree](https://www.linktree.com.br/gusleaooliveira)


* Disponível em : [Repositório de exercícios](https://gusleaooliveira.github.io/posts/)
