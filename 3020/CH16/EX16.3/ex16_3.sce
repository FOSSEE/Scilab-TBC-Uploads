clc;
clear all;
n = 25.33e27; // Number of electrons per unit volume
tr = 3.1e14; // Mean free time of electron
m = 9.11e-31; // Mass of electron in Kg
e = 1.6e-19; // Charge of an electron
rho = m/(n*e^2*tr); //Electrical resistivity of sodium metal
disp('Ohm.meter',rho,'Electrical resistivity of sodium metal at zero degrees is') 
