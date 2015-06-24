// Determine Rd
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-16 in page 289

clear; clc; close;

// Given data
K=0.25*10^-3; // Constant in mA/V^2
Vt=2; // Voltage given in V
Vdd=16; // Drain voltage in V
Vgg=[4 10]; // Gate voltage values in V

// Calculation
for i=1:2
    id=K*(Vgg(i)-2)^2;
    rd=(16-(Vgg(i)-2))/id;
    printf("Rd when Vgg is %d V = %0.1e ohm\n",Vgg(i),rd);
end

// Result
// (a) Rd = 14 K-ohm
// (b) 500 ohm