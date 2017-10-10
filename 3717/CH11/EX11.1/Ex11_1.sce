// Ex11_1 Page:238 (2014)
clc;clear;
h = 6.626e-034;    // Planck's constant, Js
k = 1.38e-023;    // Boltzmann constant, J/K
// Case-I: For Cu
theta_D = 350;    // Debye temperature for Cu, K
nu_D = k*theta_D/h;    // The highest possible frequency for Cu, per sec
printf("\nThe highest possible frequency for Cu = %6.3fe+011 per sec", nu_D/1e+011);
// Case-II: For Si
theta_D = 550;    // Debye temperature for Si, K
nu_D = k*theta_D/h;    // The highest possible frequency for Si, per sec
printf("\nThe highest possible frequency for Si = %6.2fe+011 per sec", nu_D/1e+011);

// Result
// The highest possible frequency for Cu = 72.895e+011 per sec
// The highest possible frequency for Si = 114.55e+011 per sec