// Calculate Av,Zo
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-30 in page 334

clear; clc; close;

// Given data
gm=5; // Transconductance in mA/V
rd=10*10^3; // Dynamic resistance in K-ohms
mu=50; // Amplification factor
Rd=5*10^3; // Drain resistance in K-ohms

// Calculation
Av=(-mu*Rd)/(rd+Rd+((mu+1)*0.1*10^3));
Avs=Av*(100/110);
Zo=rd+((mu+1)*0.1*10^3);
Zo1=(1/15.1)+(1/5);
A=1/Zo1;
printf("Av = %0.2f\n",Av);
printf("Over all voltage gain Avs = %0.1f\n",Avs);
printf("Output impedance = %0.2e K\n",Zo);
printf("Effective output impedance Zo = %0.2f k-ohms",A);

// Result
// (a) Avs = -11.3
// (b) Zo = 3.75 K-ohms