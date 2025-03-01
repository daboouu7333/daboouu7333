import getpass

mot_de_passe = getpass.getpass("Quel est votre mot de passe ?")

while mot_de_passe != "azerty":
    print("Mot de passe incorrect. Essayez encore.")
    mot_de_passe = getpass.getpass("Quel est votre mot de passe ?")

print("Le mot de passe est bon")