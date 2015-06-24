// Determine drain-source resistance
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 6-11 in page 287

clear; clc; close;

// Given data
Ids=10*10^-3; // Drain current in mA
Vp=-2; // Peak voltage in V
Vgs=[1 2]; // Gate-source voltage in V

// Calculation
for i=1:2
    rds=Vp^2/(2*Ids*(Vgs(i)-Vp));
    printf("Rds = %0.1f ohm\n",rds);
end

// Result
// Rds = 66.7 ohm, 50 ohm