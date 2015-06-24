clc;
clear all;
e=1.6e-19;//charge of electron
u=3.2e-3;//
sigma=5.9e7;//conductivity
ni=sigma/(u*e);//concentration of conduction electron in Cu
disp('m^-3',ni,'concentration of conduction electron in Cu is:');
N=6.022e23;//Avogadro's constant
de=8900;//density
m=63.5;//atomic mass of Cu
ne=1e3;//no of free electrons per atom
n=N*de*ne/m;//concentration of free electrons per Cu atom
disp('electrons per m^3',n,'concentration of free electrons per Cu atom is:')
avg=ni/n;//average no of electrons contributed per Cu atom
disp('',avg,'average no of electrons contributed per Cu atom');
