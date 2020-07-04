[Menu](../README.md)


![Senac](img/senac.png)

**Superior em Tecnologia de Redes de Computadores**

**Disciplina:** Adm. de Sist. Op. Não-Proprietários

**Professor:** Ademir Dorneles


# Avaliação Prática III
## Tarefa 01: Configuração de Rede:

    a) Antes de iniciar a sua VM, nas configurações do VirtualBox, adicione uma interface de rede com modo de operação definida como Rede Interna.

    b) Configure (no arquivo interfaces) as interfaces de rede conforme segue:
enp0s3 (bridge):  Defina a configuração para obter IPautomaticamente.
Enp0s8 (rede interna): IP: 10.10.10.1/24

    c) Habilite o NAT definindo a interface enp0s3 como saída:

    d) Ative o ip_forward para definir que o kernel irá encaminhar pacotes (deverá ser ativado no arquivo de configuração):

    e) Teste a conexão da máquina com a internet:

# ping  8.8.8.8
# ping  www.google.com


## Tarefa 02: Instalação de Pacotes:

1. Verifique a configuração dos repositórios para instalação de pacotes via APT:

```bash

```

2. Atualize a lista de pacotes disponíveis no repositório com o comando “update”:

```bash
apt update
```

3. Com o gerenciador de pacotes APT, instale os utilitários g++, gcc e make :

```bash
apt install g++ gcc make -y
```

4. Com o gerenciador de pacotes APT, instale o software Apache:
```bash
apt install apache2 -y
```

5. Com o gerenciador de pacotes APT, instale a aplicação OpenSSH Server:
```bash
apt install openssh-server -y
```

6. Baixe o utilitário iptraf a partir do seguinte endereço:

http://sft.if.usp.br/debian/pool/main/i/iptraf/iptraf_3.0.0-8.1_amd64.deb

- [x] Baixado

```bash
wget -c http://sft.if.usp.br/debian/pool/main/i/iptraf/iptraf_3.0.0-8.1_amd64.deb
```

7. Instale o pacote .deb baixado:

```bash
dpkg -i iptraf_3.0.0-8.1_amd64.deb
```

8. Baixe o software nmap a partir do seguinte endereço:

https://nmap.org/dist/nmap-7.50.tar.bz2

- [x] Baixado

```bash
wget -c https://nmap.org/dist/nmap-7.50.tar.bz2
```

9. Descompacte, compile e instale a ferramenta nmap:

```bash
tar -jxvf nmap-7.50.tar.bz2
cd nmap-7.50/
./configure
make
make install
```

## Tarefa 03: Gerenciamento de Processo:

1. Com o comando ps liste os processos de todos usuários:

```bash

```
2. Com o comando ps liste somente os processos não conectados a terminais:

```bash

```
3. Liste a hierarquia de processos (árvore de processos) ativos no sistema:

```bash

```
4. Liste a hierarquia de processos (árvore de processos) ativos no sistema de forma que o comando mostre além dos nomes, os números que identificam os processos (PID) :

```bash

```
5. Verifique o PID do processo denominado  “login”:

```bash

```
6. Abra o “vi” em segundo plano executando o comando:  
    * Identifique o valor que identifica o processo aberto pelo aplicativo VI em segundo plano:
    
    ```bash

    ```
    * Traga o processo do VI para primeiro plano:


    ```bash

    ```
Tarefa 04: Gerenciamento de dispositivos:
Antes de iniciar a tarefa crie o diretório /home/atividade03/tarefa04/
    a) Desligue a máquina virtual e crie um novo disco rígido contendo o tamanho de 1Gb:
    b) Crie duas partições (primárias) de 500 MB no disco criado:
    c) Formate a primeira partição com o sistema de arquivo ext3:
    d) Formate a segunda partição com o sistema de arquivo ntfs:
    e) Crie dois diretórios (disk01 e disk02) no diretório /mnt:
    f) Monte a partição com sistema ext3 no diretório disk01:
    g) Monte a partição com sistema ntfs no diretório disk02:
    h) Configure o arquivo fstab para montar automaticamente as duas partições na inicialização do sistema:


***

# Criador
Olá me chamo Gustavo, e criei este material, para mais informações, clique nos links abaixo:

* [LinkTree](https://www.linktree.com.br/gusleaooliveira)


* Disponível em : [Repositório de exercícios](https://gusleaooliveira.github.io/posts/)

<script data-ad-client="ca-pub-3232624848043560" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
