// Calculation of maximum temperature

clear;
clc;

printf("\t Example 19.1\n");

To=20;  // Room Temperature (degree celsius)

sigma=-172;  //Mpa  Compressive stress

E=100*10^3;  //Mpa Young's modulus

a=20*10^-6;  //Celsius^-1  Coefficient of thermal expansion

Tf=To-(sigma/(E*a));

printf("\nFinal Temperature is : %d C\n",Tf);

//End