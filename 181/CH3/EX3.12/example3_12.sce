// Determine maximum and average values of power
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-12 in page 159

clear; clc; close;

// Given data
V1=230; // Input voltage in V
N=1/3; // Turn ratio
Rl=200; // Load resistance in ohms

// Calculation
V2=V1*N;
Vm=sqrt(2)*V2;
Im=Vm/Rl;
P=Im^2*Rl;
Vdc=0.318*Vm;
Idc=Vdc/Rl;
Pdc=Idc^2*Rl;
printf("Maximum load power = %0.2f W\n",P);
printf("Average load power = %0.2f W",Pdc);

// Result
// Maximum power = 58.78 W
// Average power = 5.94 W