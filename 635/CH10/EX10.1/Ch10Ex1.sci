// Scilab Code Ex10.1 Particle Moving in One-Dimensional Potential Well: Page-328 (2010)
a = 10^-3; //Separation between the walls of the well, m
m = 10^-9; // Mass of the dust particle, kg
t = 100; // Average time for successive collisons with the wall, s
h = 6.626*10^-34; // Plank's constant, Js
v = a/t; // Velocity of the particle inside the potential well, m/s
E = 1/2*m*v^2; // Kinetic energy of the particle, J
// For one-dimensional potential well, the energy eigen value is given by
//            E = h^2*n^2/(8*m*a^2)
// Solving for n 
n = sqrt((8*m*a^2*E)/h^2) // Quantum number corresponding to the energy eigen value E
disp (n, "The quantum number described by this motion is:")
// Result 
// The quantum number described by this motion is: 
//    3.018D+16