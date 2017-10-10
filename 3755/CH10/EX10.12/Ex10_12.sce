clear
//
//
//

//Variable declaration    
epsilon0=8.85*10^-12;        //relative permeability(F/m)
epsilonr=1.0024;       //dielectric constant
N=2.7*10^25;     //number of atoms

//Calculations
alphae=epsilon0*(epsilonr-1)/N;    //electronic polarizability(Fm^2)

//Result
printf("\n electronic polarizability is %0.1f *10^-40 Fm^2",alphae*10^40)
printf("\n answer in the book is wrong")
