// Scilab Code Ex 10.2 Motion of a ground state Electron in a 3-D Potential Well: Page-329 (2010)
a = 0.5*10^-10;    // length of the potential box, m
h = 6.626*10^-34; // Plank's Constant, Js
m = 9.1*10^-31;  // Mass of an Electron, kg
// In 3-D, the three quantum numbers nx, ny and nz each will have value equal to 1 for lowest energy state
nx = 1;    // Quantum number corresponding to x-direction
ny = 1;    // Quantum number corresponding to y-direction 
nz = 1;    // Quantum number corresponding to z-direction
EG = h^2*(nx^2+ny^2+nz^2)/(8*m*a^2); // Energy eigen value for 3-D potential, J
EeV = EG/1.6D-19; // Convert energy from joule to eV
disp (EeV, "The lowest energy of an electron confined to move in a 3D-potential box, in eV, is : ")
//Result
// The lowest energy of an electron confined to move in a 3D-potential box, in eV, is :
// 452.30641