#!/bin/bash



echo "criando diretorios"
mkdir /publico 
mkdir /VEN 
mkdir /ADM
mkdir SEC

echo "criando grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios"

useradd carlos -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_SEC

echo " add permissões aos diretorios"

chown root:GRP_ADM /ADM
chown root:GRP_VEN /VEN
chown root:GRP_SEC /SEC

chmod 777 /publico
chmod 770 /ADM
chmod 770 /VEN
chmod 770 /SEC


echo "Fim....."


