clc();
clear;
// To calculate the net radiant interchange between two parallel black discs

T1=(1500+460)/100;                         // Temperature of plane 1 in degR
T2=(1000+460)/100;                         // Temperature of plane 2 in degR
e1=0.8;                                    // Emmisivity for higher temperature
e2=0.6;                                    // Emmisivity for lower temperature
s=0.174;                                   // Stephan Boltzman's constant
D=10/12;                                   // Diameter of disc in ft
A=%pi/4*D^2;                               // Area of disc in ft^2
F1r2=0.669;
F1r2g=1/((1/F1r2)+(1/e1)+(1/e2)-2);        // Shape factor
q12=s*F1r2g*A*((T1^4)-(T2^4));             // Radiant interchange in Btu/hr
printf("The net radiant interchange between two parallel very large planes per square foot is %d Btu/hr",q12);