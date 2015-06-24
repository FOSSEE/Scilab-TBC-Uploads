// Scilab Code Ex5.14 : Page-5.26 (2004)
clc;clear;
h = 6.62e-34 // Planck's const, Js
delx = 1e-8 // Uncertainity in position, m
m = 9.1e-31;    //  Mass of electron, kg
delv =  h/(m*delx); // Uncertainty in velocity, km/s

printf("\nUncertainty in velocity = %3.2f km/sec", delv/1000);

//Results
//  Uncertainty in velocity = 72.75 km/sec


