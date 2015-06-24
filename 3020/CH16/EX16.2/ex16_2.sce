clc;
clear all;
m = 9.11e-31; // Mass of electron in Kg
e = 1.6e-19; // charge of an electron
r = 1.85e-10; // Radius of sodium atom in meters
tr = 3e-14; //Mean free time of sodium in meters/sec
a = (4*r)/sqrt(3); // Lattice constant of a BCC structure
ne = 2/(a^3); 
rho = (m)/(ne*e^2*tr); // Resistivity of copper
disp('Ohm.m',rho,'Resistivity of copper is')
//Slight variation in answer as compared to textbook
