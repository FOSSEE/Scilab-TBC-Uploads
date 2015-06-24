clc;
clear all;
v=0.86e6;//velocity of electron in m/s
m=9.1e-31;// Mass of electron in Kg
e=1.6e-19;// Charge of electron
k=1.38e-23;//boltzmann constant
Ef=m*v*v/2;//fermi energy
Tf=Ef/k;//The fermi temperature
disp('K',Tf,'The fermi temperature is:')
