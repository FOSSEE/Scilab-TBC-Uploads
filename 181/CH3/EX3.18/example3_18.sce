// Find DC output voltage,pulse frequency
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-18 in page 162

clear; clc; close;

// Given data
Vp=230; // Peak voltage in V
f=50; // Frequency in Hz
Rl=200; // Load resistance in ohms
N=1/4; // Turn ratio

// Calculation
Vs=Vp*N;
Vm=Vs*sqrt(2);
Idc=(2*Vm)/(%pi*Rl);
Vdc=Idc*Rl;
fout=2*f;
printf("(a)DC output voltage = %0.2f V\n",Vdc);
printf("(b)Pulse frequency of output = %0.0f Hz",fout);

// Result
// (a) Vdc = 51.77 V
// (b) F_out = 100 HZ