//Example 7_11
clc;clear;
// Given values
L_r=1/100;// (L_r=L_m/L_p) Length scale factor

//Properties
// For water at atmospheric pressure and at T = 20°C
nu_p=1.002*10^-6;// The prototype kinematic viscosity in m^2/s

// Calculation
nu_m=nu_p*(L_r)^(3/2);
printf("Required kinematic viscosity of model liquid:nu_m=%0.2e m^2/s\n",nu_m);
