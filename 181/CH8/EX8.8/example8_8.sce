// Max and Min firing delays
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 8-8 in page 386

clear; clc; close;

// Given Data
Vc=40; // Breakdown voltage of DIAC in V
C=470*10^-9; // Capacitance in nF
E=240; // Rms voltage at 50 Hz in V
omga=2*%pi*50; // Angular frequency

// Calculation
printf("When DIAC is not conducting:\n")
A=asind(40/335.8)+8.4;
Z=1/(omga*C);
R1=atand(1/(omga*1000*C));
Zd=sqrt(R1^(2+(1/omga^2*C^2)));
printf("Minimum delay = %0.2f degrees\n\n",A);
printf("When DIAC conducts:\n");
A1=asind(40/88.6)+74.84;
printf("Maximum delay = %0.2f degrees",A1);

// Result
// Minimum delay = 15.24 degrees
// Maximum delay = 101.6 degrees