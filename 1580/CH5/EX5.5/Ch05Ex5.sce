// Scilab Code Ex5.5 : Page-5.13 (2004)
clc;clear;
h = 6.62e-34; // Planck's const, Js
me = 9.1e-31; //Mass of electron, kg
delx = 1e-9; // Uncertainty in position, m
delp =  h/(delx); // Uncertainty principle
delv =  (delp/me); // Uncertainty in velocity, m/sec

printf ("\nUncertainty in velocity = %4.2e m/sec", delv)

// Result
// Uncertainty in velocity=7.2747e+05 m/sec 
