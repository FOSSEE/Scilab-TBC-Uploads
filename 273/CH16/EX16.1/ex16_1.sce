clc;clear;
//Example 16.1
//calculation of density

//given values
a=3.36*10^-10;//lattice constant in m
M=209;//atomicmass of polonium in kg
N=6.02*10^26;//avogadro's number
z=1;//no of atom
//calculation
d=z*M/(N*a^3)

disp(d,'density (in kg/m^3) is');
