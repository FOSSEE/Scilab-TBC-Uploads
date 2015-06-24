//water and its treatment//
//example 2.18.7//
clc
Hardness_ppm=304//ppm in terms of CaCO3//
Cl=0.07*Hardness_ppm//0.07 °Clarke =1 ppm//
Fr=0.1*Hardness_ppm//0.1 °French =1 ppm//
mgperlit=Hardness_ppm
printf("Hardness in terms of °Clarke %.2f °Cl",Cl);
printf("\nHardness in terms of °French %.1f °Fr",Fr);
printf("\nHardness in terms of mg/lit %.0f mg/l",mgperlit);