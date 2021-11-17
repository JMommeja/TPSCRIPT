#!/bin/bash

wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; then
        echo "Internet ON"
        exit 0
else
        echo "Pas d'internet" 
        exit 1
fi
