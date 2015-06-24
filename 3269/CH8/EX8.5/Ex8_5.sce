// Example 8.5
clear all;
clc;

// Given data
// 1 feet  = 12 inches
d = 0.42/12;                              // Diameter of the fuel rod in feet(ft)
a = d/2;                                  // Radius of the fuel rod in ft
b = 0.024/12;                             // Thickness of Zircaloy-4 clad in ft
H = 12;                                   // Length of fuel rod in ft
T_m = 3970;                               // Center temperature of fuel in F

// 1.
// Using the result of Example 8.3
q_max = 4.66*10^7;                        // Maximum heat flux at the center of the rod in Btu/hr-ft^3
// Calculation
q_bar = (a^2*q_max)/(2*(a+b));
// According to Table 1.9
// 1 kW=3412 Btu/hr
// Result
printf(" \n Heat flux of the fuel rod = %.2E Btu/hr-ft^2 or %3.1f W/cm^2 \n",q_bar,(q_bar*1000)/(3412*30.48^2));

// 2.
// Using the data from Table IV.6
k_f = 1.1;                                // Thermal conductivity of fuel rod in Btu/hr-ft-F
k_c = 10;                                 // Thermal conductivity of cladding in Btu/hr-ft-F
R_f = 1/(4*%pi*H*k_f);                    // Thermal resistance of fuel in F-hour/Btu
R_c = log(1+(b/a))/(2*%pi*H*k_c);         // Thermal resistance of cladding in F-hour/Btu
// Calculation
T_c = T_m-(q_bar*2*%pi*(a+b)*H*(R_f+R_c));
// Result
printf(" \n Outer temperature of cladding = %d F \n",ceil(T_c));


