#!/bin/bash

wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; then
        echo "Internet ON"
        exit 0
else
        echo "Erreur, veillez vous connectez a internet .Appuiez sur Entrer pour arreter le programme." 
        read 
        exit 1
fi
