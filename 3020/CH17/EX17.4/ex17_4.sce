clc;
clear all;
rho=2.7e3;//density of Al in Kg/m^3
m=27;//atomic weight of Al
to=1e-14;//relexation time in second
Na=6.022e26;
e=1.6e-19;
x=3;//no of electrons per atom
n=rho*Na*x/m;//no of electron available per m^3
disp('m^-3',n,'no of electron available in Al is');
me=9.1e-31;
sigma=n*e*e*to/me;//conductivity of Al
disp('ohm*m',sigma,'conductivity of Al is:')
