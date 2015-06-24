// Scilab code Ex4.11: Pg 125-126 (2008)
clc; clear;
mew_o = 4*(%pi)*1e-07;          // Pemeability for free space
l = 0.15;                       // Mean length, m
N = 2500;                      // Number of turns
I = 0.3;                       // Electric current, A
// Since magnetic field strength is defined as the mmf per metre length of the magnetic circuit, therefore, we have
H = (N*I)/l;                   // Magnetic field strength, At/m
B = 0.75;                      // Flux density( value taken from graph ), T
// Since B = ( mew_r * mew_o * H ), solving for mew_r
mew_r = B/(mew_o * H);               // Relative permeability
printf("\nThe flux desity of given toroid = %3.2f T ", B);
printf("\nThe relative permeability of given toroid = %5.1f", mew_r);

// Result
// The flux desity of given toroid = 0.75 T
// The relative permeability of given toroid = 119.4
