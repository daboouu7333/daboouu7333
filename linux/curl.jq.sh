#!/bin/bash

# Récupérer les données depuis l'API, trier les villes, et enregistrer dans un fichier
curl -s https://jsonplaceholder.typicode.com/users | jq -r '.[].address.city' | sort > villes_triees.log

if [ -e villes_triees.log ]; then
    echo "Le fichier a bien été créé ou était déjà présent"
else
    echo "Le fichier n'est pas présent"
fi

# Créer un fichier par ville avec les infos nom, mail, rue
curl -s https://jsonplaceholder.typicode.com/users | jq -c '.[]' |
while read user; do
    city=$(echo "$user" | jq -r '.address.city')
    filename="${city// /-}.log"

    # Vérifier si le fichier existe déjà
    if [ ! -e "$filename" ]; then
        echo "$user" | jq '{Nom: (.name | ascii_upcase), Mail: .email, Rue: .address.street}' >> "$filename"
        echo "Ce fichier viens d'être créé : $filename"
    else
        echo "Ce fichier est déjà présent : $filename"
    fi
done

#Creer un dossier Backup
if [ -e Backup ];then
        echo "Le dossier Backup existe déjà"
else
        mkdir Backup
        echo "Le répértoire Backup à bien été créé"
fi
#Creer une copie de chaque fichier city.log dans le dossier Backup
for file in *.log; do
    if [ "$file" != "villes_triees.log" ]; then
        cp "$file" Backup/
    fi
done

echo "Le répértoire Backup à bien été mis à jour"

# Donner les permissions au propriétaire, au groupe et rien aux autres

chmod 640 Backup
