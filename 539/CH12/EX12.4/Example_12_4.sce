//Computation of the No. of Schottky Defects in KCl

clear;
clc;

printf("\tExample 12.4\n");

Na=6.023*10^23;  //Avogadro number
density=1.955;  //in g/cm^3

A_K=39.1;  //in g/mol
A_Cl=35.45;  //in g/mol

N=Na*density*10^6/(A_K+A_Cl);

printf("\nNo. of lattice points are : %0.2f * 10 ^ 28 /m^3\n",N/10^28);

Qs=2.6;  // in eV
k=8.62*10^-5;  // in eV/K  Boltzmann Constant
T=500+273;  // in K

Ns=N*%e^(-Qs/(2*k*T));

printf("\nSchottky Defects are : %0.2f * 10 ^ 19 /m^3\n",Ns/10^19);

//End