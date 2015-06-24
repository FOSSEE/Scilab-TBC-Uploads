// Scilab Code Ex 10.3 Motion of an Electron excited next to the ground state in a 3-D Potential Well: Page-329 (2010)
a = 1D-10;    // length of the cubic potential box, m
h = 6.626*10^-34; // Plank's Constant, Js
m = 9.1*10^-31;  // Mass of an Electron, kg
k = 1.38D-23;    // Boltzmann Constant, J/mol-K
// In 3-D, the three quantum numbers nx, ny and nz will have values 1, 1 and 2 respectively for first excited energy state 
nx = 1;    // Quantum number corresponding to x-direction
ny = 1;    // Quantum number corresponding to y-direction 
nz = 2;    // Quantum number corresponding to z-direction
EE = h^2*(nx^2+ny^2+nz^2)/(8*m*a^2); // Energy eigen value for 3-D potential for first excited state, J
// As EE(next to the lowest) = 3/2 (k/T), where T is the absolute temperature
// Solving for T 
T = 2/3*1/k*EE;    // Absolute temperature at which energy next to the lowest energy state = 3/2 (k/T), K
EeV = EE/1.6D-19; // Convert energy from joule to eV
disp (EeV, "The first excited state energy of the electron confined to move in a 3D-potential box, in eV, is : ")
disp (T, "The temperature at which the average energy becomes equal to first excited state energy, in K, is : ")
//
//Result
// The first excited state energy of the electron confined to move in a 3D-potential box, in eV, is : 
//    226.15321
// The temperature at which the average energy becomes equal to first excited state energy, in K, is :
//     1748044.1