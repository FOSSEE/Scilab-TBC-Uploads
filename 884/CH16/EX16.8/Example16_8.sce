// Computation of Ksp from solubility

clear;
clc;

printf("\t Example 16.8\n");


//Let 's' be the equilibrium concentration of the [Ca2+] and [SO4 2-] ions, M
solubility=0.67;//solubility of CaSO4, g/L
M=136.2;//mol mass of CaSO4, g
s=solubility/M;//concentration, M
Ksp=s^2;//solubility product

printf("\t the Ksp of CaSO4 is : %2.1f*10^-5 \n",Ksp*10^5);

//End
