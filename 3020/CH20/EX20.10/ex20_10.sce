clc;
clear all;
rho=8900;//density of Ni
m=58.71;//atomic weight of Ni
Na=6.022e26;//avagadra's number
u0=4*%pi*1e-7;//permiability of vacume
N=rho*Na/m;//no of atoms per unit volume
disp('atoms/m^3',N,'no of atoms per unit volume is:')
um=9.27e-24;
x=0.6*um;//bohr megneton per atom
y=N*x;//magnetic moment per 1 gm atom
disp('A/m^2',y,'magnetic moment per 1 gm atom is:')
Bs=u0*y;//saturation magnetisation
disp('Wb/m^2',Bs,'saturation magnetisation is:')
