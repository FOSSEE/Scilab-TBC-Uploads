clc;
clear all;
e = 1.6e-19; // Charge of an electron
m = 9.11e-31; // Mass of an electron in Kg
rho = 6.8e7 ; // Conductivity of silver in 1/(ohm.meter)
at = 107.9; // Atomic weight of copper in gm
d = 10.5e3; // Density of silver in Kg per cubic meter
N = 6.023e26; // Avagadros number
n = (N*d)/at; //Density of electrons
disp('atoms/m^3',n,'The density of electrons is')
u = (rho/(n*e)); // Mobility of electron
disp('(m^2.V)/s',u,'The mobility of electron is')
