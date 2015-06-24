// Determine approximate drain-source resistance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-1 in page 274

clear; clc; close;

// Given data
I_ds=10*10^-3; // Drain current in mA
Vp=-2; // Peak voltage in V
Vgs=[0 -0.5]; // Values of Vgs in V

// Calculation
alp=[1 2];
for i=1:2
    r=Vp^2/(2*I_ds*(Vgs(i)-Vp));
    printf("(%0.0f)r_ds when Vgs = %d V is %0.2f ohm\n",alp(i),Vgs(i),r);
end

// Result
// (a) When Vgs = 0 V, r_ds = 100 ohms
// (b) When Vgs = 0.5 V, r_ds = 133.33 ohms