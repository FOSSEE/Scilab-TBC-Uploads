
// Theory and Problems of Thermodynamics
// Chapter 3
// Thermodynamic Properties of Fluids
// Example 7

clear ;clc;

//Given data
X = 0.7         //wet stream quality
P = 100         // Pressure in kPa
v_g = 1.6940    // Specific volume of gas
v_f = 0.001043  // Specific volume of fluid
h_fg = 2258.0   // Specific enthalpy difference of gas and fluid
h_f = 417.46    // Specific enthalpy of fluid

v = X*v_g + (1-X)*v_f
//h = X*h_g + (1-X)*h_f
h = h_f + X*h_fg
u = h - P*v

// Output Results
mprintf('Specific volume of wet stream = %6.4f cubic meters/kg' ,v)
mprintf('\n Specific enthalpy of wet stream = %4.2f kJ/kg' ,h)
mprintf('\n Specific internal energy of wet stream = %8.2f kJ/kg' ,u)

