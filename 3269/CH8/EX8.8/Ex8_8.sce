// Example 8.8
clear all;
clc;

// Given data
d = 0.42;                                 // Diameter of the fuel rod in inches
b = 0.024;                                // Thickness of Zircaloy-4 clad in inches
v = 15.6*3600;                            // Speed of fluid in feet/hour
a = (d/2)+b;                              // Radius of fuel rods in inches
P = 2000;                                 // Pressure of water in psi
T = 600;                                  // Water temperature in F
// Using the data from example 8.5 
s = 0.6;                                  // Pitch of square array in inches
D_e = 2*((s^2-(%pi*a^2))/(%pi*a));        // Equivalent diameter in inches
// Converting the units in terms of feet 
D_e = D_e/12;
// Using tha Table IV.3 at given T and P value
rho = 42.9;                               // Density of fluid in ft/hr
mu = 0.212;                               // Viscosity of fluid in lb/hr-ft
// Calculation 
Re = (D_e*v*rho)/mu;
// Result
printf(" \n Reylonds number = %d \n",Re);
if Re >= 10000 then
    printf(" \n As the reylonds number is greater than 10000, the flow is turbulent. \n");
end
// The value is different as compared to the textbook value. This is due to approximation of Reynolds number in the textbook.

