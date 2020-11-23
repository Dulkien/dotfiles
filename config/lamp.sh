echo "============ LAMP ============"

if [[ $1 = "-l" ]]; then
	echo "Lancement en cours..."
	sudo systemctl start httpd
	sudo systemctl start mysqld
	systemctl status httpd
	systemctl status mysqld

elif [[ $1 = "-s" ]]; then
	echo "Arret en cours..."
	sudo systemctl stop httpd
	sudo systemctl stop mysqld
	systemctl status httpd
	systemctl status mysqld

elif [[ $1 = "-h" ]]; then
	echo "lamp.sh a besoin de apache2 et de mysql (mariadb) pour fonctionner"
else
	echo "-l : lancer lamp"
	echo "-s : stopper lamp"
	echo "Appuyer sur une touche pour continuer..."
	read a
fi