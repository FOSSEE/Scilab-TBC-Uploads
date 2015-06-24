clc();
clear;

// To calculate the net radiant interchange per foot length of pipe of 2 in. standard diameter 

e=0.8;                                   // emmisivity of pipe metal
D=2.375/12;                              // Diameter of pipe in ft
s=0.174;                                 // Stephans Boltzman's constant
T1=(300+460)/100;                        // Temperature of disc 1 in degF
T2=(80+460)/100;                         // Temperature of disc 2 in degF
A1=%pi*D;                                // Area of one foot of pipe in ft^2
q12=s*e*A1*((T1^4)-(T2^4));              // Radiant interchange in Btu/hr
printf("The net radiant interchange per foot length of pipe is %.1f Btu/hr-ft",q12);