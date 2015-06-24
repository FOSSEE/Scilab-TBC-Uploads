// Calculate input voltage,value of filter
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-20 in page 163

clear; clc; close;

// Given data
Vdc=30; // DC voltage in volts
Rl=1000; // Load resistance in ohms
gamma_fwr=0.015; // Ripple factor

// Calculation
Idc=Vdc/Rl;
C=2900/(gamma_fwr*Rl);
Vm=Vdc+((5000*Idc)/C);
Vi=(2*Vm)/sqrt(2);
printf("Value of capacitor filter = %0.0f mu-F",C);
printf("Input voltage required = %0.2f V\n",Vi);


// Result
// V_in = 43.52 V
// C = 193 mu-F