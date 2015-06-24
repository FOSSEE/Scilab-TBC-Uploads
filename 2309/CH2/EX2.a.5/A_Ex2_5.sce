// Chapter 2 addl_Example 5
//==============================================================================
clc;
clear;

//input data
h           = 6.625*10^-34;         // planck's constant
c           = 3*10^8;               // vel. of light in m/s
lamda       = 10*10^-2;             // wavelength for microwave region in m
T           = 300                   // Temperature in Kelvin
Kb          = 1.38*10^-23           // Boltzmann constant

// Calculations
// let R    = Rsp/Rst 
R           = exp((h*c)/(lamda*Kb*T)) - 1;     // ratio of spontaneous to stimulated emission
if R<1 then
    mprintf('Since the spontaneous emission is lesser than stimulated emission \n hence MASER action is possible at thermal equilibrium' )
end
//==============================================================================
    
