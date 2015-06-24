clc;
clear all;
a=2.5e-10;//interatomic spacing in m
M=1.8e6;//magnetisation in A/m
x=2;//no of atoms per unit cell
N=x/(a^3);//no of atoms per unit volume
disp('m^-3',N,'no of atoms per unit volume is:')
um=M/N;//magnetisation produced per atom
disp('A*m^2',um,'magnetisation produced per atom is:')
e=1.6e-19;
h=6.626e-34;
m=9.1e-31;
b=e*h/(4*%pi*m);
Um=um/b;//conversion of unit
disp('Bohr megneton',Um,'magnetisation produced per atom is:')
