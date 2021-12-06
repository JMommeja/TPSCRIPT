#!/bin/bash
if [[ ! -d images ]]
then
    echo "Le dossier Image n'existe pas. Appuiez sur Entrer pour arreter le programme."
    read
    exit 1
else
echo "Dossier Images OK" 
fi

for FILE in ${@}
do
  if [[ ! -f $FILE ]]
  then
    echo "le fichier ${FILE} n'exite pas ou a été altérer. Appuiez sur Entrer pour arreter le programme. "
    read
    exit 1
  fi
done
