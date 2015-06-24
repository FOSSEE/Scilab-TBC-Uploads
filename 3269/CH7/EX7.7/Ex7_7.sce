// Example 7.7
clear all;
clc;

// Given data
H = 70;                                       // Height of the cylinder in cm
R = H/2;                                      // Diameter of the cylinder in cm
a = 1.9;                                      // Radius of black control rod in cm
// From Table 6.2, Buckling can be found by
B0 = sqrt((2.405/R)^2+(%pi/H)^2);
// Using the data from Table 5.2 and 5.3
L_TM2 = 8.1;                                  // Diffusion area of water moderator in cm^2
t_TM = 27;                                    // Neutron age of water moderator in cm^2
// Using the data form Table 6.3 at temperature = 20 deg 
n_T = 2.065;                                  // Average number of neutrons produced per neutron absorbed in fission
// Using the data from Table 5.2 and Table II.3
D_bar = 0.16;                                 // Thermal neutron diffusion coefficient in cm
SIGMA_t = 3.443;                              // Total macroscopic cross section in cm^(-1)
f = (1+B0^2*(L_TM2+t_TM))/(n_T+B0^2*L_TM2);   // Thermal utilization factor
M_T2 = (1-f)*L_TM2+t_TM;                      // Thermal migration area in cm^2
d = 2.131*D_bar*(a*SIGMA_t+0.9354)/(a*SIGMA_t+0.5098);  // Extrapolation distance
// Calculation
rho_w = (7.43*M_T2*(0.116+log(R/(2.405*a))+(d/a))^(-1))/((1+B0^2*M_T2)*R^2);
// Result
printf(" \n The worth of a black control rod = %.3f or %2.1f percent \n",rho_w,rho_w*100);
