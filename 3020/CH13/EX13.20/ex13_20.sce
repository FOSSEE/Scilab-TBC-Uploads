clc;
clear all;
rho = 7860;//Density of alpha-iron in Kg/m^3
M = 55.85e-3; // Atomic weight of alpha-iron in Kg
n = 2;// Number of atoms per unit cell of BCC
N = 6.022e26; // Avagadro constant
a = ((n*M)/(N*rho))^(1/3);//Lattice constant
r = ((a*sqrt(3))/4);
disp('m',r,'The atomic radius of alpha-iron is')
