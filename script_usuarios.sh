#!/bin/bash

echo "Iniciando a criação"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios Criados"

useradd carlos -c "Usuário Convidado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM  
useradd maria -c "Usuário Convidado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "Usuário Convidado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd debora -c "Usuário Convidado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Usuário Convidado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Usuário Convidado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd josefina -c "Usuário Convidado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Usuário Convidado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Usuário Convidado" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC


echo "Usuários Criados"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico 

echo "Operação Finalizada!!"
