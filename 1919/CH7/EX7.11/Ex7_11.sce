
// Theory and Problems of Thermodynamics
// Chapter 7
// Thermodynamic Relations
// Example 11

clear ;clc;

//Given data
T1 = 373.15                 // normal boiling point of water in K
T2 = 364.15                 // boiling point of water on hill in K
h_fg = 2257                 // latent heat of vaporization kJ/kg
R = 8.314                   // gas constant
T0 = 298.15                 // atmosphere temperature in K
g = 9.81                    // gravitaional force in m/s^2
M_w = 18                    // molecular mass of water
M_a = 28.97                 // molecular mass of air
// Calculations
// Clausius Clapeyron equation
ln_P2_P1 = h_fg*M_w/R*(1/T1-1/T2)

h = (R*T0*ln_P2_P1)/(-g*M_a*1e-3)         // height of hill

mprintf('Height of hill = %4.1f m', h)
