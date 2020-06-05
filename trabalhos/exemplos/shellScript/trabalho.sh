#!/usr/bin/env bash

groupadd alunos
groupadd professores
groupadd administrativos

useradd pedrovaz -g alunos -d /home/share/alunos/pedrovaz
useradd mariasilva -g alunos -d /home/share/alunos/mariasilva

useradd anabraga -g professores -d /home/share/professores/anabraga
useradd paulovargas -g professores -d /home/share/professores/paulovargas

useradd joaogomes -g professores -d /home/share/administrativos/joaogomes
useradd karlasilva -g professores -d /home/share/administrativos/karlasilva


senha="ola123"
echo "pedrovaz:$senha" | chpasswd
echo "mariasilva:$senha" | chpasswd
echo "anabraga:$senha" | chpasswd
echo "paulovargas:$senha" | chpasswd
echo "joaogomes:$senha" | chpasswd
echo "karlasilva:$senha" | chpasswd
