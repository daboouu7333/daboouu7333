#include <stdio.h>
#include <stdlib.h>

int main()
{
    const float TAUX_CONVERSION = 1.08;
    float montant_euro = 0.0, montant_dollards = 0.0;

    printf("Donner un montant en euros : ", montant_euro);
    scanf("%f", &montant_euro);

    montant_dollards = montant_euro * TAUX_CONVERSION;
    printf("%f euro = %f dollards", montant_euro, montant_dollards);

    return 0;
}