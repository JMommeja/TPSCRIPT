echo "Bonjour, ce script permet de lancer le blog, pour cela nous avons besoin des droits d'admin velliez entrer votr mot de passe ou Wtrl + C pour arreter"



if [ "$(whoami)" != "root" ]
then
  sudo -c ./util/InstallPython root
fi
 bash util/CheckIMG.bash images/cafe.jpeg images/corse.png images/capybara.jpeg images/poney.jpeg 
 bash util/CheckNetwork.bash

 