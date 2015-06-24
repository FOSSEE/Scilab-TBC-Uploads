clc()
// To calculate the net radiant interchange between floor and roof of a furnace


A1=15*15;                                // Area of floor in ft^2
A2=A1;                                   // Area of roof in ft^2
T1=2460/100;                             // Temperature of floor in degR
T2=1060/100;                             // temperature of roof in degR
s=0.174;                                 // Stephan Boltzman's constant
// S/L=1.5, So considering graph F12=0.31 

F12=0.31;
q=s*F12*A1*(T1^4-T2^4);
printf("The net radiant interchange between two bodies of unit area is %d Btu/hr-ft^2",q);