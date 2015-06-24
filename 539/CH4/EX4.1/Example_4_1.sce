//Number of Vacancies Computation at a Specified temperature

clear;
clc;

printf("\tExample 4.1\n");

Na=6.023*10^23;      //Avogadro No.
den=8.4D+06;         //Density of Copper
A=63.5;              //Atomic weight of Copper

//No. of atomic site per cubic meter
N=Na*den/A;

//No. of vacancies at 1000 C
Qv=0.9;             //Activation energy in eV
k=8.62*10^-5;       //Boltzmann Constatnt in eV/K
T=1000+273;         //Temperature in K

Nv=N*exp(-Qv/(k*T));
printf("\nNo.of vacancies are %.1f * 10^25 /m^3",Nv/10^25);

//End