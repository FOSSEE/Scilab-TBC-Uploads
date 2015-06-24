// Example 8.7
clear all;
clc;

// Given data
T_b0 = 543;                                // Temperature of inlet coolant in F
w = 3148;                                 // Coolant rate per channel in lb/hr

// 1. 
V_f = 1.15*10^(-2);                       // Volume of fueled portion in ft^2
// Using the result of Example 8.3
q_max = 4.66*10^7;                        // Maximum heat flux at the center of the rod in Btu/hr-ft^3
// From Table IV.3
c_p = 1.3;                                // Specific heat at constant pressure in Btu/lb-F
// Calculation 
T_bmax = T_b0+((2*q_max*V_f)/(%pi*w*c_p));
// Result
printf(" \n Exit temperature of the coolant = %d F \n",T_bmax);

// 2.
// Using the data of Example 8.6
h = 7500;                                 // Heat transfer coefficient in Btu/hr-ft^2-F
// Using the data of Example 8.5
d = 0.42/12;                              // Diameter of the fuel rod in feet(ft)
a = d/2;                                  // Radius of the fuel rod in ft
b = 0.024/12;                             // Thickness of Zircaloy-4 clad in ft
H = 12;                                   // Length of fuel rod in ft
A = 2*%pi*(a+b)*H;                        // Area of the assumed cylinder in ft^2
R_h = 1/(h*A);                            // Convective resistance in F-hour/Btu
alpha = %pi*w*c_p*R_h;                    // A parameter

// Using the result from Example 8.5 
R_f = 6.03*10^(-3);                       // Thermal resistance of fuel 
R_c = 1.43*10^(-4);                       // Thermal resistance of cladding
R = R_f+R_c+R_h;                          // Total resistance
bet = %pi*w*c_p*R;                        // A parameter denoted by 'beta'
// Calculation
T_cmax = T_b0+((q_max*V_f*R_h)*((1+sqrt(1+alpha^2))/alpha));
T_mmax = T_b0+((q_max*V_f*R)*((1+sqrt(1+bet^2))/bet));
// Result
printf(" \n Maximum temperature of cladding and fuel = %d F and %d F respectively. \n",ceil(T_cmax),T_mmax);



