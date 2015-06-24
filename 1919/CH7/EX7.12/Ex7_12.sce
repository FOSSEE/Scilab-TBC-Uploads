// Theory and Problems of Thermodynamics
// Chapter 7
// Thermodynamic Relations
// Example 12

clear ;clc;

//Given data
T1 = 373.15                 // normal boiling point of water in K
T2 = 423.15                 // boiling point of water on hill in K
h_fg_1 = 2257               // latent heat of vaporization kJ/kg
C_pf = 4.263                // in kJ/kg K
C_pg = 1.408                // in kJ/kg K

// Calculations
// Kirchoff Clapeyron equation
h_fg_2 = h_fg_1 + (C_pg-C_pf)*(T2-T1)      

mprintf('Latent heat of vaporization at 150`C = %4.2f kJ/kg', h_fg_2)
