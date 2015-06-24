//=======================================================================
// chpter 3 example 15


clc;
clear;

//input data
 N         = 6.5*10^25;           //number of atoms in atoms per m^3
 e         = 1.6*10^-19;           //charge of electron in coulombs
 m         = 9.1*10^-31;           //mass of electron inilograms
 h         = 6.6*10^-34;          //planck's constant in J.s
 T         = 300;                 //temperature in K
  k         = 1.38*10^-23;          //boltzman constant in J*(K^-1)
  n         = 1;                    //constant
 
 
//calculation
 u0        = 4*%pi*10^-7;
 M              = n*((e*h)/(4*%pi*m));                 //magnetic moment in A*m^2
 sighe          = (u0*N*(M^2))/(3*k*T);             //susceptability of diamagnetic material
 
//result
 mprintf('susceptability of diamagnetic material = %3.2e\n',sighe);
 
//======================================================================
 
