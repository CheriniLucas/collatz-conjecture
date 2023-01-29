%Conjetura de Collatz

%Esta funcion calcula la conjetura de Collatz de todos los numeros de 1 a n (a eleccion)
%y devuelve dos graficos, uno con los valores maximos obtenidos por cada uno, y otro con
%los tiempos de orbita respectivamente

clear; clc; close all

%declaracion de variables
n = 13000;  %numero hasta el que se desea analizar

%calculos
numeroDelMayorValorMaximo=0;
mayorValorMaximoAlcanzado=0;
numeroDelMayorTiempoDeOrbita=0;
mayorTiempoDeOrbitaAlcanzado=0;

for i=1:n
    j=i;
    max=j;
    t=0;
    while j~=1
        if rem(j,2)==0
            j=j/2;
        else
            j=3*j+1;
            if j>max
                max=j;
            end
        end
        t=t+1;
    end
    if max>mayorValorMaximoAlcanzado
        numeroDelMayorValorMaximo=i;
        mayorValorMaximoAlcanzado=max;
    end
    if t>mayorTiempoDeOrbitaAlcanzado
        numeroDelMayorTiempoDeOrbita=i;
        mayorTiempoDeOrbitaAlcanzado=t;
    end
    
    hold on
    subplot(1,2,1)
    plot(i,max,'r.');
        
    hold on
    subplot(1,2,2)
    plot(i,t,'r.');
    
end

subplot(1,2,1)
title('valores maximos')
xlabel(numeroDelMayorValorMaximo)
ylabel(mayorValorMaximoAlcanzado)
subplot(1,2,2)
title('tiempos de orbita')
xlabel(numeroDelMayorTiempoDeOrbita)
ylabel(mayorTiempoDeOrbitaAlcanzado)

%resultados
mayorValorMaximoAlcanzado
numeroDelMayorValorMaximo
mayorTiempoDeOrbitaAlcanzado
numeroDelMayorTiempoDeOrbita
