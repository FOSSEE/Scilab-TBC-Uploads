// Change in Inductance
clc;
clear;

L=120*(10^-3);
N=1000;
mr=75;
Nr=200;
Nc=N-Nr;

// Inductance directly proportional to the product of the square of turns and the relative permeability

Lc= L*((Nc/N)^2)*75;

disp('H',Lc,'The New value of inductance =')
