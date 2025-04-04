#!/bin/bash

# Couleur verte
green='\033[;032m'

# Couleur Rouge 
red='\033[0;31m'

# Couleur Jaune
yellow='\033[0;33m'

# Supprimer la couleur après utilisation
clear='\033[;0m'


# Installation de Google Chrome

sudo apt update && sudo apt upgrade -y
cd /tmp

# On télécharge Google depuis le web avec la commande wget

echo -e " ${yellow} Téléchargement de Google ${clear}"
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 

# On l'installe avec dpkg et son option -i pour install

echo -e " ${yellow} Installation de Google... ${clear}"
sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt-get install -f -y
sudo rm google-chrome-stable_current_amd64.deb

if which google-chrome;

then

	echo -e " ${green} Google a été installé avec succès ! ${clear}"

else

	echo -e " ${red} L'installation de Google à échoué ${clear}"

fi


# Installation de Visual Studio Code

# Mise à jour des dépôts

echo -e "${yellow}Mise à jour des dépôts...${clear}"
sudo apt update -y

# On se positionne dans le fichier temporaire
cd /tmp

# Installation de la clé gpg 
sudo apt-get install wget gpg

# Téléchargement de la clé publique microsoft
sudo wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

# Installation de la clé sur la machine locale
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

# Ajout du dépôt aux sources APT
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null

# Supprimer le fichier temporaire de la clé
rm -f packages.microsoft.gpg

# Installation de paquets, maj et installation de vs code
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# Téléchargement de Visual Studio Code
echo -e "${yellow}Téléchargement de Visual Studio Code...${clear}"
sudo wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/138f619c86f1199955d53b4166bef66ef252935c/code_1.96.0-1733888194_amd64.deb

#  Installation de VS Code
echo -e "${yellow}Installation de Visual Studio Code ${clear}"
sudo DEBIAN_FRONTEND=noninteractive dpkg -i code_1.96.0-1733888194_amd64.deb

# Supprimer le fichier temporaire 
sudo rm -r code_1.96.0-1733888194_amd64.deb

if which code;

then 

	echo -e "${green}Visual Studio Code à été installé avec succès ! ${clear}"

else

	echo -e "${red}Echec, Visual Studio Code n'a pas pu être installé ! ${clear}"

fi
