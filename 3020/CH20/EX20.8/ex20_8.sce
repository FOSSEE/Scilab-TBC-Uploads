clc;
clear all;
rho=7.8e3;//density of Gd
m=1.8e6;//atomic weight of Gd
M=157.26;//atomic no of Gd
Na=6.023e26;//avagadra's number
u0=4*%pi*1e-7;//permiability of vacume
N=rho*Na/M;//no of atoms per unit volume
disp('atoms/m^3',N,'no of atoms per unit volume is:')
um=9.27e-24;
x=7.1*um;//bohr megneton per atom
y=N*x;//magnetic moment per 1 gm atom
disp('A/m^2',y,'magnetic moment per 1 gm atom is:')
Bs=N*u0*um;//saturation magnetisation
disp('Wb/m^2',Bs,'saturation magnetisation is:')
// Wrong answer printed in textbook... Checked in textbook
