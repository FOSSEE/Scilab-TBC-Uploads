// Example 7.9
clear all;
clc;

// Given data
SIGMAa_bar = 0.2;                              // Average macroscopic absorption cross section in cm^(-1)
L_T = 1.2;                                     // Thermal diffusion length in cm
// Converting the given dimensions from inches to centimeters
// 1 inch = 2.54 cm
// From Figure 7.9
l = 9.75*(2.54/2);                            // Length of the half rod
a = 0.312*(2.54/2);                           // Thickness of the half rod
m = 44.5/sqrt(2);                             // Closest distance between two rods

D_bar = SIGMAa_bar*L_T^2;                      // Thermal neutron diffusion coefficient in cm
d = 2.131*D_bar;                               // Extrapolation distance in cm which is obtained for bare planar surface
f_R = ((4*(l-a)*L_T)/(m-(2*a))^2*(1/((d/L_T)+coth((m-(2*a))/(2*L_T)))));    // Rod utilization parameter
// Calculation
rho_w = f_R/(1-f_R);
// Result
printf(" \n The total worth of the control rods = %.3f or %.1f percent \n",rho_w,rho_w*100);
// There is a slight deviation in the value computed on comparison with the value given in the textbook. This is due to approximation of rod utilization parameter in the textbook.
