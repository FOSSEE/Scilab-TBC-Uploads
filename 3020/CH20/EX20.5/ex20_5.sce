clc;
clear all;
B=0.65//magnetic flux in Wb/m^2
rho=8906;//density of nickel
m=58.7;//atomic weight
Na=6.023e26;//avagadra's number
u0=4*%pi*1e-7;//permiability of vacume
N=rho*Na/m;//no of atoms per unit volume
disp('atoms/m^3',N,'no of atoms per unit volume is:')
um=B/(N*u0);//magnetization produced per atom
disp('A/m^2',um,'magnetization produced per atom is:')
Um=um/9.27e-24;//coversion of unit
disp('Bohr megneton',Um,'magnetization produced per atom is:')

