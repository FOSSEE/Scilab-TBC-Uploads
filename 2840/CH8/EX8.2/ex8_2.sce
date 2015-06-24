clc;
clear all;
e = 1.6*1e-19; // Charge on electron in coulumb
m = 9.1*1e-31; // Mass of electron in kg 
rho =  1.54*1e-8; //Resistivity of material at room temperature in ohm . meter
n = 5.8*1e28; // Number of electrons per cubic meter
Ef = 5.5; // The fermi energy of the conductor in eV
vf = sqrt((2*Ef*e)/m);
t = (m/(n*e^2*rho));
MFP = vf*t;
disp('m/s',vf,'Velocity of electron is');
disp('m',MFP,'Mean free path of electron is');
