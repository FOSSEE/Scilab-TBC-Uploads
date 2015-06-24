clear all; clc;
//This numerical is Ex 2_2,page 18.

// This numerical is used an example to teach conversion factors
T0=600
T1=550
Cp=0.24
halfVsquare=Cp*32.2*778*(T0-T1)
printf("\n The value of half of V^2 is %g (Btu/slug*R)(lbf-ft/Btu)(R)",halfVsquare)
printf("\n The value of half of V^2 ca also be written as %g lbf-ft/slug",halfVsquare)
printf("\n The value of half of V^2 is also equal to %g (ft/s)^2",halfVsquare)
V=sqrt(halfVsquare*2)
printf("\n\n The value of V is equal to %0.1f ft/s",V)
