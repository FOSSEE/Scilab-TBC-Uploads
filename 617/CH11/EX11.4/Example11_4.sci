clc();
clear;
// To calculate the radiant interchange between two black discs

D=10/12;                                   // Diameter of black disc
L=5/12;                                    // Distance between two discs
T1=(1500+460)/100;                         // Temperature of disc 1 in degR
T2=(1000+460)/100;                         // Temperature of disc 2 in degR
// From the ratio of S/L, the value of F1r2 can be found out
F1r2=0.669;                                // Shape factor
A1=%pi*D*D/4;                              // Area of disc 1 in ft^2
A2=%pi*D*D/4;                              // Area of disc 2 in ft^2
s=0.174;                                   // Stephan Boltzman's constant
q12=s*F1r2*A1*((T1^4)-(T2^4));            // Radiant interchange in Btu/hr
printf("The net radiant interchange between two parallel black discs is %d Btu/hr",q12);