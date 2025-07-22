#!/usr/bin/env python3

# Création de variable pour l'âge d'Alice 

ageAlice=int(input("Veuillez rentrer l'âge d'Alice : "))
# Création de variable pour l'année de naissance de Bob
 
date_naissance=int(input("Veuillez rentrez l'année de naissance de Bob : "))
ageBob=2025-date_naissance

# boucle tant que l'âge d'Alice est plus grand que celui de Bob
while int(ageAlice) > int(ageBob):
        print('Alice est toujours plus jeune que Bob, veuillez rentrer un âge plus petit')
        ageAlice=input('Donner un nouvel âge à Alice : ')
# Affichage de l'âge d'Alice et de l'année de naissance de Bob
        
print("Age d'alice : ",ageAlice," ans" )
print("Année de Naissance de Bob : ", ageBob," ans")

# Calcul et affiche l'écart d'âge entre Alice et Bob

annee_ecart=ageBob-ageAlice
print('Il y a ', annee_ecart,'ans décart entre Bob et Alice')

# Boucle sur l'âge des 2 personnes et tant qu'ils n'ont pas le même âge la boucle continue

while ageAlice!=ageBob:
        ageAlice+=2
        ageBob+=1

print(f'ils auront le même age à {ageAlice} ans')
