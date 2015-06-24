// Find current,dc voltage,voltage across load
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 3-15 in page 150

clear; clc; close;

// Given data
Vm=50; // Maximum voltage in V
f=50; // Frequency in Hz
Rf=20; // Internal resistance in ohms
Rl=5000; // Load resistance in ohms

// Calculation
Im=Vm/(Rl+Rf);
printf("Since diode conducts only during pisitive half of the input,Im = %0.0e A\n",Im);
printf("(a)Hence i = 10*sin100*pi*t\n");
Vdc=(Im/%pi)*Rl;
printf("(b)V_dc = %0.1f V\n",Vdc);
printf("Hence V_0v=15.9sin100*pi*t\n");
printf("(c)When diode is reverse biased,voltage across diode = %0.1f*sin100*pi*t for 0<100*pi*t<pi and 0 for pi,100*pi*t<2*pi",Vdc);

// Result
// (a) Current in the circuit = 10sin100*pi*t
// (b) DC output voltage across load = 15.9sin100*pi*t
// (c) Voltage across diode = 15.9sin100*pi*t for 0<100*pi*t and 0 for pi<100*pi*t<2*pi
