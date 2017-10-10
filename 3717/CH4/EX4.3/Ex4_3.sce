// Ex4_3 Page:64 (2014)
clc;clear;
m = 9.1e-031;    // Mass of an electron, kg
h_cross = 1.05e-034;  // Reduced Planck's constant, Js
v = 4e+06;    // Speed of the electron, m/s
p = m*v;    // Momentum of the electron, kg-m/s
delta_p = p/100;    // Uncertainty in momentum of the electron, kg-m/s
delta_x = h_cross*1e+09/(2*delta_p);    // Uncertainty in position of the electron, nm
printf("\nThe uncertainty in position of the electron = %4.2f nm", delta_x);

// Result 
// The uncertainty in position of the electron = 1.44 nm