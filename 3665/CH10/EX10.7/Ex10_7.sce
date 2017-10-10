clc//
//
//

//Variable declaration
n=6.02*10^26;     //avagadro number
d=2050;     //density(kg/m^3)
w=32;       //atomic weight
gama=1/3;    //internal field constant
epsilon0=8.55*10^-12;
epsilon_r=3.75;

//Calculation
N=n*d/w;       //number of atoms(per m^3)
alphae=3*epsilon0*((epsilon_r-1)/(epsilon_r+2))/N;      //electronic polarizability(Fm^2)

//Result
printf("\n electronic polarizability is %0.3f *10^-40 Fm^2",alphae*10^40)
