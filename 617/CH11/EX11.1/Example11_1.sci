clc();
clear;

// To calculate the net radiant interchange between two parallel black planes

T1=1660/100;                             // Temperature of first black plane in degR
T2=1260/100;                             // Temperature of second black plane in degR
s=0.174;                                 // Stephan Boltzman's constant
q=s*(T1^4-T2^4);
printf("The net radiant interchange between two bodies of unit area is %d Btu/hr-ft^2",q);