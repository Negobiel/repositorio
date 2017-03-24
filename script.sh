#!/bin/bash
USUARIO=Negobiel
SENHA=1234
SAIR=NAO

while [ $SAIR != SAIR ]; do
clear
	echo
	echo "Debian GNU/Linux 8 Jessie tty1"
	echo
	QNT=1
 while (( $QNT <= 5 )); do
  echo -n "Jessie login: "
  read LOGIN
  echo -n "Password: "
  read -s PASS
  echo
	if [ $LOGIN == $USUARIO ]; then
		if [ $PASS == $SENHA ]; then
		 QNT=6
		 SAIR=SAIR
		else
		 sleep 1
		 echo
		 echo "Login incorrect"
		fi
	else
	 sleep 1
	 echo
	 echo "Login incorrect"

	fi
let QNT=($QNT+1)
done
done
