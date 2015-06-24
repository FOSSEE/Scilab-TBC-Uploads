// Scilab code Exa2.7 : : Page 90 (2011)
clc; clear;
T_238 = 4.5e+09;// Half life of U-238, years
T_235 = 7.13e+08; // Half life of U-238, years
lambda_238 = 0.693/T_238; // Disintegration constant of U-238, years^-1
lambda_235 = 0.693/T_235; // Disintegration constant of U-235, years^-1 
N = 137.8; // Abundances of U-238/U-235
t = log(N)/(lambda_235 - lambda_238);// Age of the earth's crust, years
printf("\nThe maximum possible age of the earth crust = %5.3e years", t);

// Result 
// The maximum possible age of the earth crust = 6.022e+009 years 