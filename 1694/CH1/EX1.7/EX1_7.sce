clear;
clc;
printf("\nEx1.7\n");
//page no.-9
//given
rho=2700;.......//density of potassium bromide in kg/m^3
m=119;.........//molecular wt. 
n=4;...........//molecules per unit cell for F.C.C.
N=6.02*10^26;...//avagadro no.

M=(n*m)/N;..........//mass in each unit cell
//as density=mass/volume, so volume is a^3

a=(M/rho)^(1/3)......//lattice constant in Angstrom

printf("\nlattice constant is 6.64 angstrom\n");
