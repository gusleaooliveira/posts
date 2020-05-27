[Menu](../README.md)


![Senac](img/senac.png)

**Superior em Tecnologia de Redes de Computadores**

**Disciplina:** Adm. de Sist. Op. Não-Proprietários

**Professor:** Ademir Dorneles


# Avaliação Prática II
## Tarefa 01: Criação de usuários e grupos:
1. Crie os grupos:
  - alunos
  - professores
  - administrativos:

```bash
groupadd alunos
groupadd professores
groupadd administrativos
```

1. Crie os seguintes usuários, inserindo-os em seus respectivos grupos:

| Grupo primário  | Usuários    |
|-----------------|-------------|
| alunos          | pedrovaz    |
|                 | mariasilva  |
| professores     | anabraga    |
|                 | paulovargas |
| administrativos | joaogomes   |
|                 | karlasilva  |

> O diretório home dos usuários deverá ser: /home/share/grupo/nome_usuario onde <grupo> deve ser o grupo que o usuário pertence, para isso utilize a opção -d, não utilize a opção -m, pois os diretórios serão criados posteriormente

```bash
useradd pedrovaz -g alunos -d /home/share/alunos/pedrovaz
useradd mariasilva -g alunos -d /home/share/alunos/mariasilva

useradd anabraga -g professores -d /home/share/professores/anabraga
useradd paulovargas -g professores -d /home/share/professores/paulovargas

useradd joaogomes -g professores -d /home/share/administrativos/joaogomes
useradd karlasilva -g professores -d /home/share/administrativos/karlasilva
```

c) Defina a senha de acesso para os usuários criados:

```bash
passwd pedrovaz
passwd mariasilva
passwd anabraga
passwd paulovargas
passwd joaogomes
passwd karlasilva
```

> A senha utilizada foi: `ola123`


d) Defina para todos os usuários dos grupos professores e administrativos o Shell “BASH” como padrão.



d) Remova a possibilidade de execução de um SHELL para os usuários do grupo alunos.

e) Defina, para os usuários do grupo aluno, a data de 31/12/2020 para Data de expiração da conta:   

f) Defina para os usuários anabraga e paulovargas o grupo alunos como secundário:

g) Com o comando cut, crie no diretório /root uma lista contendo somente os nomes dos usuários criados (em ordem alfabética). Defina como usuarios.lst o nome do arquivo:

h) Com o comando cut, crie no diretório /root  uma lista contendo somente os nomes dos  grupos do sistema (em ordem alfabética) com o nome de grupos.lst:

Tarefa 02: Criação dos compartilhamentos
    a) Crie a seguinte estrutura de diretórios:




































Tarefa03: Permissões de acesso a arquivos e diretórios:

a) Defina os usuários como proprietários dos seus respectivos diretórios:

b) Defina o grupo proprietário dos diretórios como segue:
Diretório alunos  Grupo alunos
Diretório professores  Grupo professores
Diretório administrativos  Grupo administrativos
Diretório aulas  Grupo professores


c) Defina as diretivas de acesso aos diretórios conforme tabela a seguir:

Diretório
Diretivasdeacesso

Usuário
Grupo
Outros
Share
Acesso total
Leitura e Execução
Leitura e Execução
Alunos
Acesso total
Leitura e Execução
Sem acesso
usuarios (todos)
Acesso total
Sem acesso
Sem acesso
professores
Acesso total
Leitura e Execução
Sem acesso
usuarios (todos)
Acesso total
Sem acesso
Sem acesso
administrativos
Acesso total
Leitura e Execução
Sem acesso
usuarios (todos)
Acesso total
Sem acesso
Sem acesso
Aulas
Acesso total
Acesso total
Leitura e Execução
Redes
Acesso total
Acesso total
Leitura e Execução
projetos
Acesso total
Acesso total
Leitura e Execução






Tarefa 04: Comandos diversos:
    a) Crie no diretório root um diretório denominado tarefa04:


    b) Crie no diretório tarefa04 um arquivo denominado senhas.txt contendo as últimas 06 linhas do arquivo shadow:


    c) Desabilite a conta dos usuários pedrovaz e karlasilva:


    d) Crie no diretório tarefa04 um arquivo denominado shell.txt contendo as últimas 10 linhas do arquivo passwd.

    e) Defina para o usuário joaogomes o grupo professores como grupo secundário:

    f) Defina o grupo administrativos como novo grupo primário do usuário paulovargas:

    g) Expire a senha dos usuários anabraga e pedrovaz:


    h) Crie um grupo chamado formandos:

    i) Defina o grupo formandos como grupo primário dos usuários pedrovaz e mariasilva:


    j) Exclua o usuário anabraga, incluindo seu diretório home:

    k) Altere a máscara do modo de acesso padrão para 0027:


n) Retorne a máscara padrão do sistema para 0022.

q) Faça uma cópia completa dos seguintes arquivos dentro do diretório /root/tarefa04, com os seguintes nomes:
    • passwd    users.txt
    • group   groups.txt
    • shadow   1senhas.txt



Tarefa 05: Configuração básica de rede

a) Desligue a máquina virtual;
b) Adicione duas novas interfaces de rede em modo rede interna.
As configurações das interfaces de rede devem ficar como segue:
	- Interface 1 = Modo Bridge
	- Interface 2 = Rede Interna
	- Interface 3 = Rede Interna

c) Inicialize o sistema;
d) Configure o arquivo interfaces como segue:

            ▪ Interface eth0: Obter IP automaticamente

            ▪ Interface eth1: IP estático: 172.16.1.1/26


            ▪ Interface eth2: IP estático 2001:db8:dad0:cafe::aaaa/64





***

# Criador
Olá me chamo Gustavo, e criei este material, para mais informações, clique nos links abaixo:

* [LinkTree](https://www.linktree.com.br/gusleaooliveira)


* Disponível em : [Repositório de exercícios](../README.md)
