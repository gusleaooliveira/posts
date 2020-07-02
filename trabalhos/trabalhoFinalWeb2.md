[Menu](https://gusleaooliveira.github.io/posts/)


# Tabalho de Web 2
## Parte final

### Arquivo index
No arquivo inicial foram importados o `express`, que é o framework para criar **api's rest**.

```typescript
const express = require("express");
```

Foram importadas as três rotas de:
* **Depoimentos:** esta terá os depoimentos de quem utilizou os serviços da empresa.
* **Contatos:** esta terá os contados de quem deseja contratar os serviços da empresa.
* **Imagens:** esta terá as imagens dos trabalhos da empresa redimensionadas para cada tipo de tela.

```typescript
const rotaDepoimentos = require("./rotas/Depoimentos");
const rotaContatos = require("./rotas/Contatos");
const rotaImagens = require("./rotas/Imagens");
```

Também foi instanciado o express, para criar o `app`.

```typescript
const app = express();
```

As rotas, anteriormente importadas, foram passadas para que o `app` possa utilizar como rotas da api.
```typescript
app.use(rotaDepoimentos);
app.use(rotaContatos);
app.use(rotaImagens);
```

O `app` ficará escutando respectivamente, na variável `PORT` do sistema, e na porta **5000**:
```typescript
app.listen(process.env.PORT || 5000);
```

### Arquivo de depoimentos




***

# Criador
Olá me chamo Gustavo, e criei este material, para mais informações, clique nos links abaixo:

* [LinkTree](https://www.linktree.com.br/gusleaooliveira)


* Disponível em : [Repositório de exercícios](https://gusleaooliveira.github.io/posts/)
