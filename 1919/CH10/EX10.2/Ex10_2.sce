
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 2

clear ;clc;

//Given data
P1 = 10.89              // volumetric composition of CO2
P2 = 3.63               // volumetric composition of CO
P3 = 3.63               // volumetric composition of O2
P4 = 81.85              // volumetric composition of N2

// Consider 100 mol dry combustion products as the basis
// Combustion Reaction
// X*C2H2 +Y*O2 +3.76*Y*N2 => P1*CO2 +P2*CO +X*H2O +P3*O2 +P4*N2


Y = P4/3.76                      // nitrogen mass balance
X = (P1+P2)/2                    // carbon mass balance
aafr = (Y+P4)/X                  // actual air-fuel ratio

tafr = 11.9                     // theoritical air fuel ratio

exces_per = (aafr - tafr)/tafr*100  // percent excess air

// Output Results
mprintf('Percent excess air = %4.2f ' ,exces_per);
