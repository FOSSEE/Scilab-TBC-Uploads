// Example 8.9
clear all;
clc;

// Using the data from Example 8.8
s = 0.6;                                  // Pitch of square lattice in inches
d = 0.42;                                 // Diameter of the fuel rod in inches
b = 0.024;                                // Thickness of Zircaloy-4 clad in inches
a = (d/2)+b;                              // Radius of fuel rods in inches 
D_e = 0.0427;                             // Equivalent diameter in feet
Re = 484329;                              // Reynolds number
PD = s/(2*a);                             // The ratio of pitch to diameter of fuel rod
// For a square lattice
C = 0.042*PD-0.024;                       // A constant

// According to Table IV.3
c_p = 1.45;                               // Specific heat at constant pressure in Btu/lb-F
mu = 0.212;                               // Viscosity of fluid in lb/hr-ft
k = 0.296;                                // Conductivity of fluid in Btu/hr-ft F
Pr=(c_p*mu)/k;                          // Prandtl number
// The constants are assumed as
m = 0.8;  
n = 1/3;
// Calculation
h = C*(k/D_e)*(Re)^m*Pr^n;
// Result
printf(" \n Heat transfer coefficient = %d Btu/hr-ft^2-F\n",h);
// The value is different as compared to the textbook value. This is due to approximation of Reynolds number in the textbook and in this problem actual value is considered.
