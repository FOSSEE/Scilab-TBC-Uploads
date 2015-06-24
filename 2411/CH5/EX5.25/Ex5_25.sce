// Scilab Code Ex5.25: Page-296 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
delta_t = 1e-012;    // Life time of a nucleus in the excited state, s
delta_E = h/(2*%pi*delta_t);    // Minimum uncertainty in the energy of the excited state of the nucleus, J 
// As E = h*nu, solving for delta_nu
delta_nu = delta_E/h;    // Minimum uncertainty in the frequency of the excited state of the nucleus, Hz
printf("\nThe minimum uncertainty in the energy of the excited state of the nucleus = %5.3e J", delta_E);
printf("\nThe minimum uncertainty in the frequency of the excited state of the nucleus = %4.2e MHz", delta_nu/1e+006);

// Result
// The minimum uncertainty in the energy of the excited state of the nucleus = 1.054e-022 J
// The minimum uncertainty in the frequency of the excited state of the nucleus = 1.59e+005 MHz 