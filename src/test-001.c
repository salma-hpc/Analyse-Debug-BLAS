#include <stdio.h>

#include <cblas.h>

int main(int argc, char **argv)
{
  int Size;
  int *pSize=0;

  printf("Entrer la taille des vecteurs (exemple 8): ");
  scanf("%d", pSize);

  // Création des vecteurs
  float *sv1=salloc(Size);
  float *sv2=salloc(Size);
  float *sv3; 

  // Initialisation des Vecteurs
  sinit(Size,sv1,1.0,1.0);
  sinit(Size,sv2,1.0,1.0);
  scopy(Size, sv2, 1, sv3, 1);

  printf("\n\n===============================\n");
  printf("Vectors before saxpy computations : \n");
  sdump(Size, sv1);
  sdump(Size, sv2);
  sdump(Size, sv3);

  saxpy(Size, 1.0, sv1, 1, sv3, 1);

  printf("\n\n===============================\n");
  printf("Vectors after saxpy computations : \n");
  sdump(Size, sv1);
  sdump(Size, sv2);
  sdump(Size, sv3);

  scopy(Size, sv3, 1, sv1, 1);
  printf("\n\n===============================\n");
  printf("Vectors after scopy computations : \n");
  sdump(Size, sv1);
  sdump(Size, sv2);
  sdump(Size, sv3);


  return 0;
}
