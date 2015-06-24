//=======================================================================
// chapter 4 example 3

clc;
clear;


//input data
 E0    = 300*10^2;                  //local field in V/m
 P1  = 3.398*10^-7;                 //dipole moment Coulomb/m
 P2  = 2.124*10^-5;                 //dipole moment Coulomb/m
 e0  = 8.85*10^-12;                 //permittivity in F/m
 
 
//formula
//E10Ci=E0-(2*Pi/3*e0)
//calculation
 E10C1  = E0-((2*P1)/(3*e0));       //local field of benzene in V/m
 E10C2  = E0-((2*P2)/(3*e0));      //local field of water in V/m
 
 //result
 mprintf('local field of benzene=%3.2e.V/m\n',E10C1);
 mprintf('local field of water=%3.2e.V/m\n',E10C2);
 
//=======================================================================
