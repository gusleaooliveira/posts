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

usermod pedrovaz -s $SHELL
usermod mariasilva -s $SHELL
usermod anabraga -s $SHELL
usermod paulovargas -s $SHELL
usermod joaogomes -s $SHELL
usermod karlasilva -s $SHELL

usermod pedrovaz -s /bin/false
usermod mariasilva -s /bin/false

chage pedrovaz -E 20201231
chage mariasilva -E 20201231

usermod anabraga -G alunos
usermod paulovargas -G alunos

tail -n 6 /etc/passwd | cut -d ":" -f 1 | sort -d > /root/usuarios.lst

tail -n 3 /etc/group | cut -d ":" -f 1 | sort -d > /root/grupos.lst

mkdir -p /home/share/{alunos,professores,administrativos,aulas}
mkdir -p /home/share/alunos/{pedrovaz,mariasilva}
mkdir -p /home/share/professores/{anabraga,paulovargas}
mkdir -p /home/share/administrativos/{joaogomes,karlasilva}
mkdir -p /home/share/aulas/{redes,projetos}

chown pedrovaz /home/share/alunos/pedrovaz
chown mariasilva /home/share/alunos/mariasilva
chown anabraga /home/share/professores/anabraga
chown paulovargas /home/share/professores/paulovargas
chown joaogomes /home/share/administrativos/joaogomes
chown karlasilva /home/share/administrativos/karlasilva

chgrp -R  alunos /home/share/alunos
chgrp -R  professores /home/share/professores
chgrp -R  administrativos /home/share/administrativos
chgrp -R  professores /home/share/aulas

chmod u=rwx,g=rx,o=rx,a=rwx /home/share/
chmod u=rwx,g=rx,o=---,a=rwx /home/share/alunos/
chmod u=rwx,g=rx,o=---,a=rwx /home/share/professores/
chmod u=rwx,g=---,o=---,a=rwx /home/share/administrativos/
chmod -R u=rwx,g=rwx,o=rx,a=rwx /home/share/aulas/

mkdir /root/tarefa04

tail -n 6 /etc/shadow > /root/tarefa04/senhas.txt

usermod -L pedrovaz
usermod -L karlasilva

tail -n 10 /etc/passwd > /root/tarefa04/shell.txt

usermod  joaogomes -G professores

usermod  paulovargas -g administrativos

passwd -e anabraga
passwd -e pedrovaz

groupadd formandos

usermod -g formandos pedrovaz
usermod -g formandos mariasilva


userdel -r anabraga

umask 0027
umask 0022


cat /etc/passwd > tarefa04/users.txt
cat /etc/group > tarefa04/groups.txt
cat /etc/group > tarefa04/s.txt
