// Scilab Code Ex 5.6 : Uncertainty in time : Page-5.13 (2004)
clc;clear;
h = 6.62e-34; // planck's const, Js
n1 = 1; //  first state
n2 = 2; //  second state
En = (-13.6/n2^2)+(13.6/n1);   //Energy for transition, in eV
e = 1.6e-19;    //  Charge of electron , C
E2 = e*En;     // Energy for transition, J
delE = E2/100; // Uncertainty in position, m
delt =  h/(delE); // Uncertainty principle
printf("\nUncertainty in time = %1.3e sec", delt);

// Results
// Uncertainity in time = 4.056e-14 sec 
