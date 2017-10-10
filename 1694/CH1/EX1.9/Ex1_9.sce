clear;
clc;
printf("\nEx1.9\n");
//page no.-11
//given
rho=2170;.......//density of NaCl in kg/m^3
m=58.45;.........//molecular wt. of NaCl 
n=4;...........//molecules per unit cell for F.C.C.
N=6*10^26;...//avagadro no.

M=(n*m)/N;..........//mass in each unit cell
//as density=mass/volume, so volume is a^3

a=(M/rho)^(1/3)......//lattice constant in Angstrom

printf("\nlattice constant is 5.64 angstrom\n");
