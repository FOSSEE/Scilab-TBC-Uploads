clc;
clear all;
e = 1.6e-19; // Charge of an electron
m = 9.11e-31; // Mass of an electron in Kg
r = 1.6e-8 ; // resistivity of silver in (ohm.meter)
at = 107.9e-3; // Atomic weight of copper in gm
d = 10.5e3; // Density of silver in Kg per cubic meter
N = 6.023e23; // Avagadros number
c = 3e8 ;// Velocity of light in air
fe= 5.5*e // Fermi energy of the silver piece
E = 100;// Electric field
sigma = 1/r; // Conductivity
n = (N*d)/at; 
tr = (sigma*m)/(n*e^2);// Relaxation time
lambda = c*tr; // Mean free path
vd = (sigma*E)/(n*e);// Drift velocity
disp('s',tr,'Relaxation time is')
disp('m',lambda,'Mean free path is')
disp('m/s',vd,'Drift velocity of electrons')
