//To calculate the density of Copper crystal
AW = 63.5;    //atomic weight of Cu, gm/mol
N = 6.023*10^23;     //avagadro's number, mol-1
r = 1.278;     //atomic radius, A
n = 4;     //number of atoms in unit cell
r = r*10^-8;      //atomic radius, cm
M = AW/N;      //mass of each Copper atom, gm
a = 4*r/sqrt(2);      //lattice constant, cm
m = n*M;    //mass of unit cell, gm
rho = m/a^3;     //density of copper crystal, gm/cm^3
printf("density of Copper crystal is %5.3f gm/cm^3",rho);
