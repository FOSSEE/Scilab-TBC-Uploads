// Scilab code Exa2.19 : : Page 95 (2011)
clc; clear;
N_0 = 6.022137e+023; //  Avagadro number 
T_P = 90*365*24*3600; // Half life of Pu-238,s
L_P = 0.693/T_P ; // Decay constant of Pu-238,s^-1
E = 5.5; // Energy of alpha particle, MeV
P =E*L_P*N_0; // Power released by the gm molecule of Pu-238,MeV/s
t = log(8)/(L_P*365*24*3600); // Time in which power reduces to 1/8 time of its initial value 
printf("\nThe power released by the gm molecule of Pu-238 = %4.2e MeV/s \nThe time in which power reduces to 1/8 time of its initial value = %d yrs",P,t)

// Result
// The power released by the gm molecule of Pu-238 = 8.09e+014 MeV/s 
// The time in which power reduces to 1/8 time of its initial value = 270 yrs 