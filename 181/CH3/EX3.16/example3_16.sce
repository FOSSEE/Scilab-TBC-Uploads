// Estimate value of capacitance needed
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-16 in page 161

clear; clc; close;

// Given data
Vrms=230; // RMS voltage in V
f=50; // Frequency in Hz
gamma_hwr=0.003; // Ripple factor assumed
I=0.5; // Load current in A

// Calculation
Vm=sqrt(2)*Vrms;
Vdc=(Vm/%pi);
Rl=Vdc/I;
C=1/(2*sqrt(3)*f*gamma_hwr*Rl);
printf("Capacitance needed = %0.2e F",C);

// Result
// Capacitance needed = 9.29 mF