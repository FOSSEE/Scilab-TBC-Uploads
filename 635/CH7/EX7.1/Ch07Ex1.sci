// Scilab Code Ex7.1 Cut-off frequency of the linear lattice of a solid: Page-238 (2010)
v = 3e+03;    // Velocity of sound in the solid, m/s
a = 3e-010;    // Interatomic distance, m
// As cut-off frequency occurs at k = %pi/a and k = 2*%pi/lambda, this gives
lambda = 2*a;    // Cut-off wavelength for the solid, m
f = v/lambda;    // Cut-off frequency (v = f*lambda) for the linear lattice, hertz
printf("\nThe cut-off frequency for the linear lattice of a solid = %1.0e Hz", f);
// Result 
// The cut-off frequency for the linear lattice of a solid = 5e+012 Hz 