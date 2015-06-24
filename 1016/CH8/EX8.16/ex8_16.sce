clc;clear;
//Example 8.16

//given data
W=1.54;//wavelength in angstrom
D=15.9;//angle in degree
M=58.45//molecular weight
p=2164*10^3;//density in kg/m^3
n=2;//for NaCl molecule

//calculation
d=W/(2*sind(D));
disp(d,'lattice spacing in angstrom');
d=d*10^-10;
Na=M/(2*d^3*p);
disp(Na,'Avogrado number in 1/gm mole')