clear
//
//
//

//Variable declaration    
epsilon0=8.85*10^-12;        //relative permeability(F/m)
epsilonr=1.0000684;       //dielectric constant
N=2.7*10^25;     //number of atoms

//Calculations
alphae=epsilon0*(epsilonr-1)/N;    //electronic polarizability(Fm^2)

//Result
printf("\n electronic polarizability is %e Fm^2",alphae)
printf("\n answer varies due to rounding off errors")
