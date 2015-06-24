// Scilab Code Ex9.4: Uncertainty principle for position and momentum: Page-203 (2010)
h = 6.626e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of the electron, kg
v = 1.1e+006;    // Speed of the electron, m/s
p = m*v;    // Momentum of the electron, kg-m/s
dp = 0.1/100*p;    // Uncertainty in momentum, kg-m/s
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
// From Heisenberg uncertainty principle,
// dx*dp = h_bar/2, solving for dx
dx = h_bar/(2*dp);    // Uncertainty in position, m
printf("\nThe uncertainty in position of electron = %4.2e m", dx);

// Result
// The uncertainty in position of electron = 5.27e-008 m 