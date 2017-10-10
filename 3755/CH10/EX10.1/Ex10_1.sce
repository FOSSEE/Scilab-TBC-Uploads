clear
//
//
//

//Variable declaration    
P=4.3*10^-8;     //polarisation(per cm^2)
epsilon0=8.85*10^-12;        //relative permeability(F/m)
E=1000;         //electric field(V/m)

//Calculations
epsilonr=1+(P/(epsilon0*E));        //relative permittivity

//Result
printf("\n relative permittivity is %0.2f ",epsilonr)
