// Calculate the peak load current
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-4 in page 153

clear; clc; close;

// Given data
Rf=30; // Internal resistance in ohms
Rl=990; // Load resistance in ohms
Vm=110; // Rms supply voltage in in V

// Calculation
Im=(Vm/2)/(Rf+Rl);
I_dc=Im/%pi;
I_rms=Im/2;
V_dc=(Im*Rl)/%pi;
Pi=I_rms^2*(Rf+Rl);
R=(((Vm/%pi)-(I_dc*Rl))/(I_dc*Rl))*100;

printf("(a)Im = %0.2e A\n",Im);
printf("(b)I_dc = %0.2e A\n",I_dc);
printf("(c)I_rms = %0.2e A\n",I_rms);
printf("(d)V_dc = %0.3e V\n",V_dc);
printf("(e)Input power = %0.2f W\n",Pi);
printf("(f)Percentage regulation = %0.3f percent",R);

// Result
// (a) Im=53.9mA
// (b) Idc=17.2mA
// (c) Irms=27mA
// (d) Vdc=16.99V 
// (e) Pi=0.74W 
// (f) Percentage regulation=106%