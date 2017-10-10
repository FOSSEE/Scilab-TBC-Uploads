clear
//
//
//

//Variable declaration    
epsilon0=8.854*10^-12;        //relative permeability(F/m)
alphae=10^-40;       //dielectric polarizability(Fm^2)
N=3*10^28;     //number of atoms

//Calculations
epsilonr=1+(N*alphae/epsilon0);    //dielectric constant

//Result
printf("\n dielectric constant is %e ",epsilonr)
