// Calculate forward currents for voltages
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-18 in page 98

clear; clc; close;

// Given data
Vt=0.026; // Thermal voltage at room temperature in eV
V=[0.1 0.2 0.3]; // Given voltages in V

// Calculation
V1=0.026*-2.3;
printf("(a)V=%0.2f V\n",V1);
R=(exp(1.92)-1)/(exp(-1.92)-1);
printf("(b)Ration of forward bias current to reverse bias current=%0.2f\n",R);
printf("(c):\n")
for i=1:3
    I=15*(exp(V(i)/0.026)-1);
    printf("I = %0.3e A\n",I);
end

// Result
// (a) V = -0.060 V
// (b) Ratio = -6.83
// (c) Forward currents = 0.687 mA, 32.86 mA and 1.539 A respectively