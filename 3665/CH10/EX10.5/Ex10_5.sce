clc//
//
//

//Variable declaration
N=2.7*10^25;     //number of atoms(per m^3)
epsilon0=8.854*10^-12;
epsilon_r=1.0000684;

//Calculation
alphae=epsilon0*(epsilon_r-1)/N;    //electronic polarizability(Fm^2)

//Result
printf("\n electronic polarizability is %0.3f *10^-41 Fm^2",alphae*10^41)
