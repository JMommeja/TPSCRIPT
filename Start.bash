<<<<<<< HEAD
echo "Bonjour, ce script permet de lancer le blog, pour cela nous avons besoin des droits d'admin velliez entrer votr mot de passe ou Wtrl + C pour arreter"



if [ "$(whoami)" != "root" ]
then
  sudo -c ./util/InstallPython root
fi










>>>>>>> 9cd69c2612af42f03ad7c8fc0fc9826e07756e4e
 bash util/CheckIMG.bash images/cafe.jpeg images/corse.png images/capybara.jpeg images/poney.jpeg 
 bash util/CheckNetwork.bash

 