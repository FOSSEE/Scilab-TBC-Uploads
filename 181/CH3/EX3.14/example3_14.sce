// Calculate ac voltage,rectification efficiency
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-14 in page 160

clear; clc; close;

// Given data
Vdc=100; // DC voltage in V
Rl=500; // Load resistance in ohms
Rf=20; // Internal resistance in ohms

// Calculation
Idc=Vdc/Rl;
Im=Idc*%pi;
Vm=Im*(Rl+Rf);
eta=(0.406/(1+(Rf/Rl)))*100;

printf("(a)AC voltage required = %0.2f V\n",Vm);
printf("(b)Rectification efficiency = %0.0f percent",eta);

// Result
// (a) Vm = 326.73V
// (b) Rectification efficiency = 39 percent