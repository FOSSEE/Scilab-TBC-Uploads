// calculation of Concentration for precipitation

clear;
clc;

printf("\t Example 16.14\n");

FeCl2=0.003;//normality of FeCl2, M
Fe=FeCl2;//as Fe2+ is strong electrolyte, conc of Fe2+=conc of FeCl2, M
Ksp=1.6*10^-14;//solubility product of FeCl2

OH=sqrt(Ksp/Fe);//as Ksp=[Fe2+][OH-]^2, conc of OH- ions, M

//Let 'x' be the initial concentration of the NH3, M
//conc of NH3 at equilibrium is 'x-OH' as NH3 hydrolyses to give OH- ions
Kb=1.8*10^-5;//ionisation constant of base

x=(OH^2)/Kb+OH;//as Kb=[NH4+][OH-]/[NH3]

printf("\t to initiate precipitation the conc of NH3 must be slightly greater than : %2.1f *10^-6 M\n",x*10^6);
    
//End
