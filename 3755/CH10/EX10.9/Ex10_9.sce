clear
//
//
//

//Variable declaration    
epsilon0=8.85*10^-12;        //relative permeability(F/m)
R=0.053*10^-9;      //radius(nm)
N=9.8*10^26;     //number of atoms

//Calculations
alphae=4*%pi*epsilon0*R^3;    //electronic polarizability(Fm^2)
epsilonr=1+(4*%pi*N*R^3);     //relative permittivity

//Result
printf("\n electronic polarizability is %0.4f *10^-41 Fm^2",alphae*10^41)
printf("\n relative permittivity is %0.4f ",epsilonr)
