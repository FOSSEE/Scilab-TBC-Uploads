// Scilab Code Ex5.4 : Uncertainty in momentum of electron: Page-5.13 (2004)
clc;clear;
h = 6.62e-34 // Planck's const, Js
delx = 4e-10 // Uncertainty in position, m
delp =  h/(delx); // Uncertainity principle

printf("\nUncertainty in momentum = %5.3e kg m/sec", delp);

//Results
//  Uncertainty in momentum = 1.655000e-24 kg m/sec 

