// Example 8.10
clear all;
clc;

// Using the data from Example 8.3 to 8.8
P = 2000;                                 // Pressure in psi
v = 15.6;                                 // Coolant velocity in ft/sec
D_e = 0.0427;                             // Equivalent diameter in ft
d = 0.42;                                 // Diameter of the fuel rod in inches
b = 0.024;                                // Thickness of Zircaloy-4 clad in inches
a = (d/2)+b;                              // Radius of fuel rods in inches 
T_b = 600;                                // Bulk temeperature in F 

// 1.
// Using Bernath correlation
// Calculation
T_wc = 102.6*log(P)-((97.2*P)/(P+15))-(0.45*v)+32;
// Result
printf(" \n Cladding temeperature = %d F\n",T_wc);

// 2.
D_i = (2*%pi*a)/(%pi*12);                  // Heated perimeter is (2*%pi*a)/12 in feet 
// Calculation
h_c = 10890*((D_e)/(D_e+D_i))+((48*v)/D_e^0.6);
// Result
printf(" \n Heat transfer coefficient = %d Btu/hr-ft^2-F\n",h_c);

// 3.
// Calculation
q_c = h_c*(T_wc-T_b);
// Result
printf(" \n Critical heat flux = %.2E Btu/hr-ft^2\n",q_c);
// In the textbook, the unit of critical heat flux is wrong.

