//=====================================================================================================================================
// chapter 8 example 1

clc;
clear;

// Variable declaration
Ephoton = 1.5;          // energy of photon in eV
Eg      = 1.4;          // energy gap in eV
m       = 9.1*10^-31;   // mass of electron in kg
e       = 1.6*10^-19;      //charge ofelectro in coulombs
me_GaAs = 0.07;             //times of electro mass in kilograms
mh_GaAs = 0.068;             //times of electro mass in kilograms

// Calculations
Eke     = Ephoton - Eg;               //energy on eV
pe      = sqrt(2*m*me_GaAs*Eke*e)     // momentum of electrons  in kg m/s
ph      = sqrt(2*m*mh_GaAs*Eke*e)     // momentum of electrons in kg m/s


// Result
mprintf('Kinetic Energy = %3.1f eV\n Momentum of electrons = %3.1e kg m/s\n Momentum of holes = %3.1e kg m/s',Eke,pe,ph);

//=========================================================================================================================================
