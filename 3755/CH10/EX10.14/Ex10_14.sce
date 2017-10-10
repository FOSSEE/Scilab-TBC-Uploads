clear
//
//
//

//Variable declaration    
epsilon0=8.85*10^-12;       //dielectric constant
N=3*10^28;     //number of atoms
alphae=10^-40;       //dielectric polarizability(Fm^2)

//Calculations
x=N*alphae/(3*epsilon0);
epsilonr=(1+(2*x))/(1-x);       //dielectric constant

//Result
printf("\n dielectric constant is %0.2f ",epsilonr)
