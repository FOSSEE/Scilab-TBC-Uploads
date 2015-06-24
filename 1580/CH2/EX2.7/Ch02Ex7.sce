// Scilab Code Ex2.7: Page-2.25 (2004)
clc;clear;
M = 63.5;  // Atomic weight of Copper, g per mol
N = 6.023e+23;  //  Avagadro number, per mol
r = 1.278e-8;   // Atomic radius of copper, cm
m = M/N;    // Mass of one Cu atom, kg
a = (4*r)/sqrt(2); // Distance between two adjacent atom in Cu, angstrom
n1 = 4*m;   // Since number of atom per unit cell is 4
d = n1/a^3;   // Density of copper, kg per metre cube

printf("\nDensity of copper = %4.2f g per cm cube", d);

// Result 
//  Density of copper = 8.93 g per cm cube 
