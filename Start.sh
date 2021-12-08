
if [ "$1" == "--help" ]; then
  echo "Pour demarer ce programme vous aurez besoin d'une connection internet, et lancer le programme en SU (commande Sudo Bash Start.sh)"
  echo "--build : Permet de deplacer le dossier dans l'autre dossier cible."
  exit 0
fi

if [ "$1" == "--build" ]; then
  mv ./TPSCRIPT $2
  
  exit 0
fi

if [[ `id -u` -ne 0 ]] ; then echo " Vous n'etes pas en Super Admin relancer le script en faisant ''Sudo Bash Start.sh'' Appuiez sur Entrer pour arreter le programme. " ; read ; exit 1 ; fi
	 
 python3 --version || echo "Installation de python3" apt update > /dev/null 2>&1 && apt install python3.8 > /dev/null 2>&1


 bash util/CheckIMG.sh images/cafe.jpeg images/corse.png images/capybara.jpeg images/poney.jpeg 
 bash util/CheckNetwork.sh
 
 python3 -m http.server 8083 --bind 0.0.0.0

 firefox http://0.0.0.0:8083/ || chromium-browser http://0.0.0.0:8083/ || echo "Votre site est pret sur http://0.0.0.0:8083/ "