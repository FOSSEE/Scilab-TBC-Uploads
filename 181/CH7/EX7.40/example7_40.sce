// Calculate voltage gain Av
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-40 in page 342

clear; clc; close;

// Given data
gm=2*10^-3; // Transconductance in mA/V
rd=10*10^3; // Dynamic resistance in K-ohms
Zc=31.83*10^3; // Capacitive impedance in K-ohms
Vth=16.67; // Thevenin voltage in V at 1 KHz

// Calculation
R=(rd*25*10^3)/(rd+(25*10^3));
Av=-gm*R;
printf("(a)Av after neglecting capacitance = %0.2f\n",Av);
Rth=(rd*50*10^3)/(rd+50*10^3);
Av1=(-50*10^3*Vth)/((50*10^3+Rth)-%i*Zc);
printf("(b)Av after considering capacitance = %0.2f",Av1);

// Result
// Av after neglecting capacitance = -14.28
// Av after considering capacitance = -11.01