clear
//
//
//

//Variable declaration    
epsilon0=8.85*10^-12;       //dielectric constant
Na=6.023*10^26;     //number of atoms
M=32;       //atomic mass
alphae=3.28*10^-40;       //dielectric polarizability(Fm^2)
rho=2.08*10^3;         //density(kg/m^3)

//Calculations
x=Na*rho*alphae/(M*3*epsilon0);
epsilonr=(1+(2*x))/(1-x);       //dielectric constant

//Result
printf("\n dielectric constant is %0.1f ",epsilonr)
