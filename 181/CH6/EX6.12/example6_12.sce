// Determine approximate Rds
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-12 in page 287

clear; clc; close;

// Given data
K=0.25*10^-3; // Constant in mA/V^2
Vt=2; // Voltage in V
Vgs=[4 6 10]; // Drain-source voltage in V

// Calculation
for i=1:3
    rds=1/(2*K*(Vgs(i)-Vt));
    printf("Rds = %0.0f ohm\n",rds);
end

// Result
// Rds = 1 K-ohm, 500 ohm, 250 ohm