clc;
clear all;
de = 4e3; // Density of CsCl in Kg per cuibc meter
At1 = 132.9; // Atomic weight of Cs
At2 = 35.5; // Atomic weight of Cl
a = 4.12e-10; // Lattice constant in meters
n = 1; // Number of atoms in a unit cell
m = de*a^3; // Mass of CsCl;
N = (n*(At1+At2))/m; //Avagadro  Constant
disp('per Kg mole',N,'The value of avagadro constant is')
