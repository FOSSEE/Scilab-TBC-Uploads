

// Theory and Problems of Thermodynamics
// Chapter 7
// Thermodynamic Relations
// Example 9

clear ;clc;

//Given data
T = 273.15                  // temperature water in K
den_i = 916                 // density of ice at 0` C  in kg/m^3
den_w = 1000                // density of water at 0` C  in kg/m^3
h_sf  = 333.4               // latent heat of fusion of water at 0`C in kJ/kg
Tf = 272.15                 // final temperature in K  

// Calculations
h_sf = h_sf * 1e-3           // units conversion from kJ/kg to MJ/kg
del_P = h_sf /(T*(1/den_w-1/den_i)) * (Tf-T)
P = del_P + 0.101325

mprintf('The pressure to be applied to melt ice at -1 degree C = %4.6f MPa', P)
