// Scilab Code Ex3.7 The minimum value of radius ratio in AX-compound: Page-104 (2010)
// For simplicity we may assume a = 1
a = 1;    // Lattice parameter of the crystal, unit
b = 2/3*a*sin(%pi/3);    // Lattice parameter of the crystal, unit
// Here a = 2*Rx, where a is the lattice parameter and Rx is the radius of X-ions representing the bigger spheres, solving for Rx
Rx = 0.5*a; 
// Also b = RA + Rx, solving for RA
RA = b - Rx;    // Radius of A-ion representing teh smaller sphere, unit
Rad_ratio = RA/Rx;    // Radius ratio in AX compound
printf("\nThe minimum value of radius ratio in AX compound is : %5.3f", Rad_ratio);
// Result 
// The minimum value of radius ratio in AX compound is : 0.155