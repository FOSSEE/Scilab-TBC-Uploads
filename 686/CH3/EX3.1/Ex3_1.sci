clc();
clear;

// To calculate the length of the well

d = 0.06/12;                        // diameter of the thermometer  in ft
h = 18.5;                           // heat teansfer coefficient in Btu/hr-ft^2-F
k = 32;                             // Thermal conductivity in Btu/hr-ft^2-F
s = 0.036/12;                       // thickness of wall in ft
m = sqrt(h/(k*s));                  // parameter

// Error is less than 0.05% of the dfference between the gas temperature and the tube well temperature. Hence a=m*l

a = 6;                              // a=m*l
l = a/m;                            // Length of well in ft
printf("The length of well is %.2f ft",l)  





