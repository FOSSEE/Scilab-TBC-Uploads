clear
//
//
//

//Variable declaration    
epsilon0=8.85*10^-12;       //dielectric constant
Na=6.02*10^26;     //number of atoms
epsilonr=3.75;       //dielectric constant
M=32;       //atomic mass
rho=2050;         //density(kg/m^3)
gama=1/3;       //internal field constant

//Calculations
N=Na*rho/M;     //number of atoms
alphae=((epsilonr-1)/(epsilonr+2))*(3*epsilon0/N);       //electronic polarizability(Fm^2)

//Result
printf("\n electronic polarizability is %0.2f *10^-40 Fm^2",alphae*10^40)
