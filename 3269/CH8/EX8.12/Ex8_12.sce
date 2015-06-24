// Example 8.12
clear all;
clc;

q_max = 539000;                               // Maximum heat flux  Btu/hr-ft^2
F = 2.8;                                      // Hot channel factor
P = 3000;                                     // Reactor thermal power in MW
// Expressing in Btu/hr
// According to Table 1.9, 1 kW = 3412 Btu/hr
P = P*3.412*10^6;                             // Reactor thermal power in Btu/hr
l = 12;                                       // Length of fuel rod in ft
d = 0.5/12;                                   // Diameter of fuel rod in ft
r = d/2;                                      // Radius of fuel rod in ft

// 1.
q_av = q_max/F;
// Calculation
A = P/q_av;
// Result
printf(" \n Total heat transfer area = %d ft^2\n",A);

// 2.
A_one = 2*%pi*r;                              // The total surface area of one fuel rod
// Calculation 
n = A/A_one;
// Result
printf(" \n Number of fuel rods = %d \n",n); 
// The value is different as compared to the textbook value. This is due to approximation of total heat transfer area in the textbook and in this problem actual value is considered. As total heat transfer area is further used to calculate number of fuel rods, therefore the difference in value exists.
