// Scilab Code Ex7.3 Reflection of electromagentic radiation from a crystal: Page-239(2010)
c = 3.0e+08;    // Speed of electromagnetic wave in vacuum, m/s
a = 5.6e-010;    // Lattice parameter of NaCl crystal, m
Y = 5e+010;    // Modulus of elasticity along [100] direction of NaCl, newton per metre square
m = 23;    // Atomic weight of sodium, amu
M = 37;    // Atomic weight of chlorine, amu
amu = 1.67e-027;    // Kg equivalent of 1 amu
K = a*Y;    // Force constant of springs when the extension along [100] direction is neglected, N/m
omega_plus_max = (2*K*(1/(M*amu)+1/(m*amu)))^(1/2);    // The maximum angular frequency of the reflected electromagnetic radiation, rad per sec
lambda = 2*%pi*c/omega_plus_max;    // The wavelength at which the electromagnetic radiation is strongly reflected, m
printf("\nThe wavelength at which the electromagnetic radiation is strongly reflected by the crystal = %4.2e m", lambda);
// Result 
// The wavelength at which the electromagnetic radiation is strongly reflected by the cystal = 3.88e-005 m