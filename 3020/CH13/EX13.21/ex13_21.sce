clc;
clear all;
rho = 8960;//Density of copper in Kg/m^3
M = 63.54e-3; // Atomic weight of copper in Kg
n = 4;// Number of atoms per unit cell of FCC
N = 6.023e26; // Avagadro constant
a = ((n*M)/(N*rho))^(1/3);//Lattice constant
disp('m',a,'The lattice constant of copper is')
