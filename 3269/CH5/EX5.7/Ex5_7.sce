// Example 5.7
clear all;
clc;

// Given data
T_F = 500;                  // Temeperature in Fahrenheit
P = 2000;                   // Pressure in psi
rho = 49.6;                 // Density in terms of lb/ft^3
// Converting the given temperature from Fahrenheit to Celsius
T_C = (5/9)*(T_F-32);
// Converting the temperature from Celsius to Kelvin scale
T_K = 273+T_C;

// Using the data given in Table 5.2,
D_bar_0 = 0.16;             // Diffusion coefficient at 293 K
rho_0 = 62.4;               // Density at 293 K in terms of lb/ft^3
L_T2_0 = 8.1;               // Diffusion area at 293 K in cm^2
T_0 = 293;                  // Standard Temperature in kelvin
m = 0.47;                   // Material specific constant
// Calculation
D_bar = D_bar_0*(rho_0/rho)*(T_K/T_0)^m;
L_T2 = L_T2_0*(rho_0/rho)^2*(T_K/T_0)^(m+1/2);
// Result
printf('\n Diffusion coefficient of ordinary water = %4.3f cm \n',D_bar);
printf('\n Diffusion area of ordinary water = %3.1f cm^2 \n',L_T2);
