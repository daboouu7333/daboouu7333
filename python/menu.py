#!/usr/bin/env python3

# J'importe le module time
import time

# Création de la fonction menu, j'y ajoute une annotation et toutes les options du menu
def menu(ham: str ='ham', eggs: str = 'eggs') -> str:
    """Affiche les options du menu principal pour l'utilisateur."""
    print('[4] Donnez moi un nombre :')
    print('[3] Quelle est votre prénom ? : ')
    print('[2] Envoie de la documentation de la fonction')
    print('[1] Envoie des annotations de la fonction')
    print('[0] Quitter le programme')
choix_menu=int(1)
nombre=int()
while choix_menu != 0:
    menu()
    choix_menu=int(input("Entrez votre choix : "))
# Les différentes actions des optionss
    if choix_menu == 4:
        nombre=int(input("Donnez moi un nombre : "))
        print('Vous avez choisi le nombre :', nombre)
    elif choix_menu == 3:
        prenom=str(input("Donnez moi votre prénom :"))
        print('Votre prénom est :', prenom)
    elif choix_menu == 2:
        print(menu.__doc__)
    elif choix_menu == 1:
        print(menu.__annotations__)
    elif int(choix_menu) >= 5:
        print("Erreur : Votre choix n'est pas dans la liste")
# 1 sec de pause avant de recommencer la boucle
    time.sleep(1)




