#!/bin/bash
echo "criando directórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários.."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd maria  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Especificando permissões do directorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim.."
