//===============================================================================================================================
// Chapter 7 example 4

clc;
clear;

// Variable declaration
k   = 1.38*10^-23;          // boltzmann constant (m^2)*(kg)*(s^-2)*(K^-1)
e   = 1.6*10^-19;           // charge of electron in coulombs
ue  = 0.19                  // mobility of electron  in m^2.V^-1.s^-1
uh  = 0.027;                // mobilty of holes in m^2.V^-1.s^-1
T   = 300;                  // temperature in K

// Calculations
Dn  = (k*T/e)*ue;           //diffusion constant of electrons in cm^2/s
Dh  = (k*T/e)*uh;           // diffusion constant of holes in cm^2/s


// Result
mprintf('Diffusion co-efficients of electrons = %g m^2/s\n Diffusion co-efficients of holes = %g m^2/s',Dn,Dh)

//==================================================================================================================================
