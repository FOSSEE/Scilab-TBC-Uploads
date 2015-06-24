clc;
clear all;
n = 5.8e28; // Number of electrons per unit volume
tr = 3.4e-14; // Relaxation time of electron in seconds
m = 9.11e-31; // Mass of electron in Kg
e = 1.6e-19; // Charge of an electron
rho = m/(n*e^2*tr); //Electrical resistivity of sodium metal
disp('Ohm.meter',rho,'Electrical resistivity of sodium metal at zero degrees is')
ue = (e*tr)/m; //Mobility of electron in metal
disp('m^2/(V.s)',ue,'The mobility of electron in metal is')
// Wrong answer printed in textbook... checked in calculator
