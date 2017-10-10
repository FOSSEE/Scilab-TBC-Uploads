clear;
clc;
printf("\nEx-6.22\n");
//page no.-193
//given
g=18.8;.......//specific gravity
M=184;.......//atomic weight
n=2;.........//no of electrons per atom
N=6.02*10^23;......//avagadro no.
e=1.6*10^-19;.......//charge

no=(N*g*n)*10^6/M........//no of electrons per unit volume

printf("\nno. of electrons/ unit volume 1.23*10^29 /m^3\n");

E=((3.64*10^-19)/e)*(no^(2/3)).......//fermi energy

printf("\nfermi energy is 9 eV");
