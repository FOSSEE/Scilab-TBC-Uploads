// Scilab Code Ex2.7 : Page:81 (2011)
clc;clear;
del_x = 1e-09;     // Uncertainty in position of the electron, m
m0 = 9.1e-031;....// Rest mass of an electron, kg
hcut = 1.054e-034;....// Planck's constant,in J-s
del_v = hcut/(2*del_x*m0);....// Uncertainity in velocity of the electron
printf("\nThe uncertainity in the velocity of an electron = %4.2e m/s",del_v);
 
// Result
// The uncertainity in the velocity of an electron = 5.79e+04 m/s 
