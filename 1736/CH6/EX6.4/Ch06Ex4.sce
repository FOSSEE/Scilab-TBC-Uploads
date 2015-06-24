// Scilab Code Ex6.4: Page-196 (2006)
clc; clear;
m = 9.11e-031;  // Electron Rest Mass , kg
k = 1.38e-023;  // Boltzmann constant, J/mol/K
h = 6.626e-034; // Planck's constant, Js
T = 300;        // Room temperature, K
m_e = 0.068*m;    // Mass of electron, kg
m_h = 0.56*m;   // Mass of hole, kg
E_g = 1.42*1.6e-019;     // Energy band gap for GaAs, J
n_i = 2*(2*%pi*k*T/h^2)^(3/2)*(m_e*m_h)^(3/4)*exp(-E_g/(2*k*T));
printf("\nThe Intrinsic carrier concentration of GaAs at 300 K = %1.0e per metre cube", n_i);

// Result 
// The intrinsic carrier concentration of GaAs at 300 K = 3e+012 per metre cube 
