[Menu](../../README.md)

![](../img/cabecalho-redes.png)

# Laboratório - Identificação de endereços IPv4 

## Nome
Gustavo Leão Nogueira de Oliveira

## Objetivos 

### Parte 1: Identificar endereços IPv4 

* Identificar a rede e parte do host de um endereço IP.
* Identificar o intervalo de endereços de host com um par de máscara de rede/prefixo. 

### Parte 2: Classificar os endereços IPv4 

* Identificar o tipo de endereço (rede, host, multicast ou broadcast). 
* Identificar se um endereço é público ou privado. 
* Determinar se uma atribuição de endereço é um endereço de host válido. 

## Histórico/cenário 

O endereçamento é uma função importante dos protocolos de camada de rede visto que permite a comunicação de dados entre os hosts na mesma rede ou em redes diferentes. Neste laboratório, você examinará a estrutura dos endereços de Internet Protocol versão 4 (IPv4) Você identificará os vários tipos de endereços IPv4 e os componentes que ajudam a entender o endereço, como a porção da rede, porção de host e a máscara de sub-rede. Os tipos de endereços abrangidos incluem públicos, privados, unicast e multicast. 

## Recursos necessários 

* Dispositivo com acesso à Internet 
* Opcional: calculadora de endereços IPv4 

# Parte 1: Identificar endereços IPv4 

Na parte 1, você receberá vários exemplos de endereços IPv4 e preencherá as tabelas com informações apropriadas. 

## Etapa 1: Analise a tabela mostrada a seguir e identifique a porção da rede e a porção de host dos endereços IPv4 dados. 

As duas primeiras linhas mostram exemplos de como a tabela deve ser preenchida. 

Legenda da tabela: 

N = todos os 8 bits de um octeto estão na porção da rede do endereço 

n = um bit na porção da rede do endereço 

H = todos os 8 bits de um octeto estão na porção de host do endereço

 h = um bit na porção de host do endereço
| Endereço IP/Prefixo | Rede/Host N, n = rede H, h = Host | Último Endereço de Host | Endereço de Broadcast |
|:--------------:|:---------------:|:----------------:|:---------------:|
| 192.168.10.10/24 |N.N.N.H|255.255.255.0| 192.168.10.0 |
| 10.101.99.17/23 | N.N.nnnnnnnh.H | 255.255.254.0 | 10.101.98.0 |
| 209.165.200.227/27 | N.N.N.nnnhhhhh | 255.255.255.224 | 209.165.200.224 |
| 172.31.45.252/24 | N.N.N.H | 255.255.255.0 | 172.31.45.0 |
| 10.1.8.200/26 | N.N.N.nnhhhhhh | 255.255.255.192 | 10.1.8.192 |
| 172.16.117.77/20 | N.N.nnnnhhhh.H | 255.255.240.0 | 172.16.112.0 |
| 10.1.1.101/25 | N.N.N.nhhhhhhh | 255.255.255.128 | 10.1.1.0 |
| 209.165.202.140/27 | N.N.N.nnnhhhhh | 255.255.255.224 | 209.165.202.128 |
| 192.168.28.45/28 | N.N.N.nnnnhhhh | 255.255.255.240 | 192.168.28.32 |


## Etapa 2: Analise a tabela a seguir e liste o intervalo de host e endereços de broadcast com um par de máscara de rede/prefixo. 
A primeira linha mostra um exemplo de como a tabela deve ser preenchida. 

| Endereço IP/Prefixo | Primeiro Endereço de Host | Último Endereço de Host | Endereço de Broadcast |
|:--------------:|:---------------:|:----------------:|:---------------:|
| 192.168.10.10/24 | 192.168.10.1 | 192.168.10.254 | 192.168.10.255 |
| 10.101.99.17/23 | 10.101.98.1 | 10.101.99.254 | 10.101.99.255 |
| 209.165.200.227/27 | 209.165.200.225 | 209.165.200.254 | 209.165.200.255 |
| 172.31.45.252/24 | 172.31.45.1 | 172.31.45.254 | 172.31.45.255 |
| 10.1.8.200/26 | 10.1.8.193 | 10.1.8.254 | 10.1.8.255 |
| 172.16.117.77/20 | 172.16.112.1 | 172.16.127.254 | 172.16.127.255 |
|  10.1.1.101/25 | 10.1.1.1 | 10.1.1.126 | 10.1.1.127 |
| 209.165.202.140/27 | 209.165.202.129 | 209.165.202.158 | 209.165.202.159 |
| 192.168.28.45/28 | 192.168.28.33 | 192.168.28.46 | 192.168.28.47 |

# Parte 2: Classifique os endereços IPv4 
Na parte 2, você identificará e classificará vários exemplos de endereços IPv4.
## Etapa 1: Analise a tabela mostrada a seguir e identifique o tipo de endereço (endereço de rede, host, multicast ou broadcast). 
A primeira linha mostra um exemplo de como a tabela deve ser preenchida. 

| Endereço IP | Máscara de Sub Rede  | Tipo de endereço |
|:-----------:|:--------------------:|:----------------:|
|10.1.1.1| 255.255.255.252|host|
| 192.168.33.63|255.255.255.192| broadcast |
| 239.192.1.100| 255.252.0.0| host |
|172.25.12.52| 255.255.255.0| host |
|10.255.0.0| 255.0.0.0| host |
|172.16.128.48|255.255.255.240| multicast |
|209.165.202.159|255.255.255.224| host |
| 172.16.0.255|255.255.0.0| host |
|224.10.1.11|255.255.255.0| host |

## Etapa 2: Analise a tabela mostrada a seguir e identifique o endereço como público ou privado.

| Endereço IP/Prefixo | Público ou privado |
|:-------------------:|:------------------:|
|209.165.201.30/27 | público |
|192.168.255.253/24  | privado |
|10.100.11.103/16 | privado |
|172.30.1.100/28 | privado |
|192.31.7.11/24 | público |
|172.20.18.150/22 | privado |
| 128.107.10.1/16| público |
|192.135.250.10/24 | público |
|64.104.0.11/16 | público |

## Etapa 3: Analise a tabela mostrada a seguir e identifique se o endereço/par de prefixo é um endereço de host válido. 
| Endereço IP/Prefixo  | Endereço de host válido?   | Motivo  |
|:-----------:|:--------------------:|:----------------:|
|127.1.0.10/24| Inválido | Este é um ip voltado para teste da placa de rede, ou endereço de loopback. |
|172.16.255.0/16|         Inválido         | Este é um ip voltado para teste da placa de rede, além de ser privado. |
|241.19.10.100/24| Válido | Este é público, e além disso, esta corretamente dentro da rede (ele é um ip de host). |
|192.168.0.254/24| Inválido | Este, apesar de ser utilizavel, serve apenas para rede interna. |
|192.31.7.255/24| Inválido | Este além de ser privado, ainda é o endereço de broadcast. |
|64.102.255.255/14| Inválido | Este apesar de ser público, ainda é o endereço de broadcast. |
|224.0.0.5/16| Válido | Este é tanto um ip público, quanto válido por não ser um endereço de broadcast, multicas, loopback e/ou privado. |
|10.0.255.255/8| Inválido | Este é um ip inválido pois este é o endereço de broadcast. |
|198.133.219.8/24| Válido | Este é tanto um ip público, quanto válido por não ser um endereço de broadcast, multicas, loopback e/ou privado. |
## Reflexão 
Por que devemos continuar a estudar e a saber mais sobre o endereçamento IPv4 se o espaço disponível de endereços IPv4 está esgotado? 

O IPv4 deve ser estudado pois o mesmo sendo substituído pelo novo IPv6, ainda é utilizado no mundo (ainda existem ips com essa versão).  Também, ressalto que este é de fácil compreensão, por isso, é mais fácil o aprendizado, já que o IPv6 é uma versão melhorada do mesmo, sendo assim, mais fácil aprender um após o outro. 



---

# Criador

Olá me chamo Gustavo, e criei este material, para mais informações, clique nos links abaixo:

* [LinkTree](https://www.linktree.com.br/gusleaooliveira)


* Disponível em : [Repositório de exercícios](https://gusleaooliveira.github.io/posts/)

