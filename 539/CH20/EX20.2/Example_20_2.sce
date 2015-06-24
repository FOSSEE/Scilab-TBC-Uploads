//Example 20.2 Calculation of saturation magnetisation of Fe3O4

clear;
clc;

printf("Example 20.2\n");

a=0.839*10^-9; //a is edge length in m

b_m=9.27*10^-24; //ampere*m^2  (Bohr Magneton)

nb=8*4;    //8 is no. of Fe++ ions per unit cell
           //4 is Bohr magnetons per Fe++ ion

M=nb*b_m/a^3;  //M is Saturation magnetisation

printf("\nSaturation Magnetisation is : %f Ampere/m\n",M);

//End