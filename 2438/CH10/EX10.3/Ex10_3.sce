//===================================================================================================================================================================
// chapter 10 example 3

clc;
clear;

// Variable declaration

 h   = 6.63*10^-34;            // plancks constant
 c   = 3*10^8;                 // velocity of light
 lamda = 0.6*10^-6;            // wavelength in m
 e   = 1.6*10^-19;             // charge of electron
 EGap = 2.25                   // energy in eV
 EGas = 1.42                   // energy in eV

// Calculations

 E   = (h*c)/(lamda*e)            // Energy in eV
 p_change = (EGap - EGas)/100;    // rate of energy gap
 x   = (E-EGas)/p_change          // mol % og GaP to be added to get an energy gap of E

// Result

 mprintf('Energy of radiation = %3.4f eV\n Rate of energy gap varies with addition of GaP is %3.5f\n mol percent to be added to get an energy gap of %3.4f eV is %3.1f mol percent',E,p_change,E,x);

//==================================================================================================================================================================
