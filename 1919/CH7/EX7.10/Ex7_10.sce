
// Theory and Problems of Thermodynamics
// Chapter 7
// Thermodynamic Relations
// Example 10

clear ;clc;

//Given data
P1 = 53.329                 // vapor pressure of benzene in kPa
T1 = 333.75                 // temperature of benzene in K
T2 = 353.25                 // boiling point temperature of benzene in K
P2 = 101.325                // pressure in kPa
R = 8.314                   // gas constant
// Calculations
// Clausius Clapeyron equation
//log(P2/P1) = h_fg/R*(1/T1-1/T2)
h_fg = log(P2/P1)*R/(1/T1-1/T2)
h_fg = h_fg*1e-3            // units conversion from J/mol to kJ/mol

mprintf('Latent heat of vaporization of benzene = %4.3f kJ/mol', h_fg)
