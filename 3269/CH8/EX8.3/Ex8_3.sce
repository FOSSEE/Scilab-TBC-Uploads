// Example 8.3
clear all;
clc;

// Given data
n = 193*204;                              // Total number of fuel rods in the reactor
// 1 feet  = 12 inches
R = 67/12;                                // Outer radius of the cylinder in feet(ft)
H = 144/12;                               // Outer radius of the cylinder in ft
d = 0.42/12;                              // Diameter of the fuel rod in ft
a = d/2;                                  // Radius of the fuel rod in ft
P = 1893;                                 // Reactor thermal power in MW
Ed = 180;                                 // Energy deposited locally in the fuel per fission in MW(Assumption)
ER = 200;                                 // Recoverable energy per fission in MW(Assumption)

// 1.
// Calculation
// According to Table 1.9
// 1 kW=3412 Btu/hr
q_r = (2.32*P*Ed)/(n*ER);
q_max=(q_r*3412*1000)/(2*H*a^2);
// Result
printf(" \n Total energy production at the axis = %.2E Btu/hr",(q_r*3412*1000));
printf(" \n Maximum energy production at the axis = %.2E Btu/hr-ft^3 \n",q_max);

// 2.
r = 20/12;                                   // Distance from the axis in ft
j0 = besselj(0,((2.405*r)/R));              // Bessel function
// Calculation
// According to Table 1.9
// 1 kW=3412 Btu/hr
q_r20 = q_r*j0;
q_max20 = (q_r20*3412*1000)/(2*H*a^2);
// Result
printf(" \n Total energy production at a distance of 20 inches = %.2E Btu/hr",(q_r20*3412*1000));
printf(" \n Maximum energy production at a distance of 20 inches = %.2E Btu/hr-ft^3 \n",q_max20);
