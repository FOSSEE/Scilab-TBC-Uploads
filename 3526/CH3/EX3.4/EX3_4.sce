//page 57
clc;funcprot(0);//EXAMPLE 3.4
// Initialisation of Variables
a0=2.866*10^-8;..........//Lattice constant for BCC iron     cells in cm
m=55.847;..........//Atomic mass of iron in g/mol
Na=6.02*10^23;......//Avogadro’s number in atoms/mol
n=2;.........//number of atoms per cell in BCC iron
//CALCULATIONS
v=a0^3;........//Volume of unit cell for BCC iron in cm^3/cell
rho=(n*m)/(v*Na);.......//Density of BCC iron
disp(v,"Volume of unit cell for BCC iron in cm^3/cell:")
disp(rho,"Density of BCC iron in g/cm^3:")
