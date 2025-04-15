#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int rayon_cercle = 0;
    int diametre = 0;
    float circonference = 0.0;
    float aire = 0.0;
    float hauteur = 0.0;
    float volume_cylindre = 0.0;
    float volume_cone = 0.0;

    printf("Quelle est le rayon du cercle ? ");
    scanf("%d", &rayon_cercle);

    diametre = rayon_cercle * 2;
    printf("Ce cercle a pour diametre %d\n", diametre);

    circonference = rayon_cercle * M_PI * 2;
    printf("Ce cercle a pour circonference %.4f\n", circonference);

    aire = rayon_cercle * rayon_cercle * M_PI;
    printf("Ce cercle a pour aire %.4f\n", aire);

    printf("Quelle est la hauteur du volume ? ");
    scanf("%f", &hauteur);

    volume_cylindre = M_PI * pow(rayon_cercle, 2) * hauteur;
    printf("Ce cylindre a pour volume %.4f\n", volume_cylindre);

    volume_cone = M_PI * pow(rayon_cercle, 2);
    volume_cone = 1.0/3.0 * M_PI * pow(rayon_cercle, 2) * hauteur;
    printf("Le volume du cone est de %.4f cm³\n", volume_cone);



    return 0;
}