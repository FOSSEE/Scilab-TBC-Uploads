// Scilab Code Ex1.10 Heat equivalent of mass: Pg:23 (2008)
c = 3e+08;    // Speed of light, m/s
J = 4.18;    // Joule's equivalent of heat, joule per calorie
m = 4.18e-03;    // Mass of the substance, kg
U = m*c^2;    // Energy equivalent of mass, J
Q = U/J;    // Heat equivalent of mass, calorie
printf("\nThe heat equivalent of mass = %1.0e cal", Q);
// Result 
// The heat equivalent of mass = 9e+013 cal