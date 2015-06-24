// Calculate voltage gain Av
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-57 in page 359

clear; clc; close;

// Given data
gm=2*10^-3; // Transconductance in mA/V
rd=10*10^3; // Dynamic resistance in K-ohms
C=0.025*10^-6; // Capacitance in microF 

// Calculation
Rl=(30*30)/(30+30);
Av=(-gm*rd*Rl*10^3)/(Rl+rd);
f1=1/(2*%pi*37.5*10^3*C);
Avl=Av/sqrt(1+(f1/(5*10^3))^2);
printf("(a)Av = %0.0f\n(b)Avl = %0.2f",Av,Avl);

// Result
// (a) Av = -30
// (b) Avl = -29.94