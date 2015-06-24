// Computation of solubility from Ksp

clear;
clc;

printf("\t Example 16.9\n");

Ksp=2.2*10^-20;//solubility product
//Let 's' be the equilibrium concentration of the [Cu2+] and hence conc of [OH-] ions will be'2s', M, so Ksp=s*(2s)^2=4s^3

s=(Ksp/4)^(1/3);//concentration, M
M=97.57;//mol mass of Cu(OH)2, g
solubility=s*M;//solubility of Cu(OH)2, g/L

printf("\t the solubility of Cu(OH)2 is : %2.3f*10^-5 g/L\n",solubility*10^5);

//End
