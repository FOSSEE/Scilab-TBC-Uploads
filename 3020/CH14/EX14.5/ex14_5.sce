clc;
clear all;
k = 1.38e-23; //Boltzmann constant
h = 6.62e-34; // Planck's constant
m = 9.1e-31; // Mass of an electron in Kg
L = 0.1e-9 ; // Length of potential wall in meters
nx = 1; // For the lowest energy level
ny = 1; //
nz = 2; // The higher energy level
E = (h^2*(nx^2+ny^2+nz^2))/(8*m*L^2);//Energy of electron in (1 1 2) state
disp('J',E,'Energy of electron in (1 1 2) state is')
T = (E*2)/(3*k); // Temperature of the system 
disp('K',T,'Temperature of the system is')
