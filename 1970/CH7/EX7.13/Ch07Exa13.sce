// Scilab code Exa7.13: : Page-297 (2011)
clc; clear;
E_0 = 0.014*1.6022e-13;   // Energy of the gamma rays, joule
A = 57;                   // Mass number
m = 1.67e-27;             // Mass of each nucleon, Kg
c = 3e+08;                // Velocity of light, metre per sec
N = 1000;                 // Number of atoms in the lattice
v = E_0/(A*N*m*c);        // Ralative velocity, metre per sec
printf("\nThe relative source absorber velocity = %5.3f m/s", v);

// Result
// The relative source absorber velocity = 0.079 m/s 


