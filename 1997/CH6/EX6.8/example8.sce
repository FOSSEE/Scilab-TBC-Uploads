//Chapter-6 example 8
//=============================================================================
clc;
clear;
//input data
Na   = 1.8*10^15;//Doping Concentration 
J    = 25*10^3;//current density in A/cm^2
q    = 1.6*10^-19;//charge of electron
//Calculations
Vaz  = J/(q*Na);//Avalanche Zone Velocity
//output
mprintf('Avalanche Zone Velocity of TRAPATT is %g\n',Vaz);
mprintf(' Note: wrong calculation done in Textbook');
//=============end of the program===============================================
