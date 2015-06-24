clc();
clear;

// To calculate the net radiant interchange between two parallel planes

T1=1460/100;                            // Temperature of first black plane in degK
T2=1060/100;                            // temperature of second black plane in degK
s=0.174;                                // Stephan Boltzman's constant
e1=0.9;                                 // Emmisivity for higher temperature
e2=0.7;                                 // Emmisivity for higher temperature
F1r2=1/((1/e1)+(1/e2)-1);               // Shape factor

q=s*F1r2*(T1^4-T2^4);
printf("The net radiant interchange between two bodies of unit area is %d Btu/hr-ft^2",q);