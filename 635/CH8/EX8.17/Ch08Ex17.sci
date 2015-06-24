// Scilab code Ex8.17: Diffraction of electrons from fcc crystal planes Page 295 (2010)
// Declare a function for converting angle into degrees and minutes
function [d,m] = degree_minute(n)    
         d = int(n);
         m = (n-int(n))*60;
endfunction
h = 6.626e-034;    // Planck's constant, Js
m = 9.1e-031;    // Rest mass of electron, kg
e = 1.602e-019;    // charge on an electron, coulomb
a = 3.5e-010;    // Lattice parameter of fcc crystal, m
V = 80;    // Accelerating potential for electrons, volt
lambda = h/sqrt(2*m*e*V);    // de-Broglie wavelength of electrons, m
d_111 = a/sqrt(3);    // Interplanar spacing for (111) planes of fcc crystal, m
// Bragg's equation for first order diffraction (n = 1) is
// lambda = 2*d_111*sind(theta_111);    // Bragg's law, m
theta_111 = asind(lambda/(2*d_111));    // Bragg's angle, degree
[deg, mint] = degree_minute(theta_111);    // Call conversion function
printf("\nThe Bragg angle for electron diffraction = %d deg %d min", deg, mint);
// Result
// The Bragg angle for electron diffraction = 19 deg 50 min
