//Theoretical Density Determination for NaCl

clear;
clc;

printf("\tExample12.3\n");

A_Na=22.99;  // in g/mol
A_Cl=35.45;  //in g/mol

r_Na=0.102*10^-7;  //in cm Radius of Na+ ion
r_Cl=0.181*10^-7;  //in cm Radius of Cl- ion

a=2*(r_Na+r_Cl);
V=a^3;

n=4;  //For FCC, no. of atoms are 4 per crystal

Na=6.023*10^23;  //Avogadro number

density=n*(A_Na+A_Cl)/(V*Na);

printf("\nDensity is : %0.2f g/cm^3\n",density);

//End