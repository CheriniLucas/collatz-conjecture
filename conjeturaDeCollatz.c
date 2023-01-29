#include <stdio.h>
#include <stdlib.h>

int main () {
	//Conjetura de Collatz

	//Variables
	int i, n, x, r, max;

	//Eleccion de numero inicial
	system("clear");
	printf("Bienvenido a la Conjetura de Collatz\nPor favor, ingrese un numero:\t");
	scanf("%d", &n);

	//Calculo
	system("clear");
	i=0;
	x=n;
	max=n;
	while (x!=1) {
		r=x%2;
		if(r==0) {
			x=x/2;
			i++;
		}
		else {
			x=3*x+1;
			i++;
			if(x>max){
				max=x;
			}
		}
	}

	//Resultados
	printf("Valor inicial:\t\t\t\t%d\nValor maximo alcanzado:\t\t\t%d\nTiempo de orbita:\t\t\t%d\n", n, max, i);

	return 0;
}
