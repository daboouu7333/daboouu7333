// Add Library
#include <stdio.h>
#include <stdlib.h>

int main()
{
    // Declaration des variables
    const float TAUX_CONVERSION = 1.14;
    float montant_euro = 0.0, montant_dollards = 0.0;

    // Demande d'un montant en euros a l'utilisateur
    printf("Donner un montant en euros : ", montant_euro);
    // Lecture avec scanf, le & commercial devant la variable sinon ça ne fonctionne pas
    scanf("%f", &montant_euro);

    // Calcul du montant
    montant_dollards = montant_euro * TAUX_CONVERSION;
    // Affichage de la conversion
    printf("%f euro = %f dollards", montant_euro, montant_dollards);

    return 0;
}