// Example 3.10
clear all;
clc;

// Given data
E = 1;                                  // Energy of neutron in MeV
A = 2;                                  // Atomic mass number of deuterium
v = 45;                                 // Scattering angle in degree

//  1.
// Calculation 
E_dash = E/(A+1)^2 *((cosd (v)+sqrt(A^2-(sind(v))^2))^2);
// Result
printf('\n Energy of scattered neutron = %4.3f MeV \n',E_dash);

// 2.
// Calculation 
E_A = E-E_dash;
// Result
printf('\n Energy of recoil nucleus = %4.3f MeV \n',E_A);

// 3.
// Calculation 
deltau = log(E/E_dash);
// Result
printf('\n Change in lethargy of neutron on collision = %4.3f \n',deltau);
