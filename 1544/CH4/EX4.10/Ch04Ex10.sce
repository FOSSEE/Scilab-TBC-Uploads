// Scilab code Ex4.10: Pg 125 (2008)
clc; clear;
N = 1000;                                     // Number of turns on coil
r = 0.1;                                      // Mean radius of toroid, m
phi = 0.1775e-03;                             // Flux density(value from graph), Wb
A = %pi*1e-04;                               // Csa of toroid, m^2
H = 88;                                       // Magnetic field strength(value from graph), At/m
B = phi/A;                                    // Flux density, T

// Part (a)
l = 2*%pi*r;                                  // Effective length of toroid, m
// Since H = (N*I)/l, solving for I
I = (H*l)/N ;                                 // Electric current in coil, A
printf("\nCoil current = %4.1f mA", I/1e-03);

// Part (b)
mew_o = 4*(%pi)*1e-07;                        // Pemeability for free space
// Since B = mew_o * mew_r * H, solving for mew_r
mew_r = B/(mew_o*H);                         //Relative permeability of toroid
printf("\nThe relative permeability of toroid = %4d",mew_r);

// Result
// Coil current = 55.3 mA
// The relative permeability of toroid = 5109
