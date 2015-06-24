clc;
clear all;
de = 9.6e2 ; // Density of sodium in Kg per cubic meter
At = 23; // Atomic weight of sodium
n = 2;// Number of atoms present in a unit cell
av = 6.022e26; // Avagadro constant
mass = (n*At)/av; 
v = (mass/de)^(1/3); // Volume of a unit cell
disp('m',v,'The lattice constant osf sodium is') 
