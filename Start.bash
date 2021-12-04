
if [ "$1" == "--help" ]; then
  echo "Pour demarer ce programme vous aurez besoin d'une connection internet, et lancer le programme en SU (commande Sudo Start.bash)"
  exit 0
fi

echo "Bonjour, ce script permet de lancer le blog, pour cela nous avons besoin des droits d'admin et une connection internet, 
velliez entrer votr mot de passe ou faites Ctrl + C pour arreter"

	 if [[ `id -u` -ne 0 ]] ; then echo " Vous n'etes pas en Super Admin relancer le script en faisant ''Sudo Start.Bash'' " ; read ; fi
	 
 python --version || echo "Installation de python3" apt update && apt install python3.8

 bash util/CheckIMG.bash images/cafe.jpeg images/corse.png images/capybara.jpeg images/poney.jpeg 
 bash util/CheckNetwork.bash

 