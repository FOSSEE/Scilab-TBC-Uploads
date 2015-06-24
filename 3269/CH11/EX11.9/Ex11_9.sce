// Example 11.9
clear all;
clc;

// Given data
gammai = 0.0277;                            // Fission yield of Iodine-131 in fraction
P = 3200;                                   // Thermal power of the plant in MW
// Calculation
alphai = 8.46*10^5*P*gammai;
// Result
printf(" \n The saturation activity of Iodine-131 during reactor operation = %.2E curie \n",alphai)

// Using assumption 2 of Nuclear Regulatory Commission (NRC) in calculation of radii of exclusion zone and Low Population Zone (LPZ)
// Due to core meltdown, 25 percent of iodine inventory is released and out of which 91 percent is in elemental form.
Fp = 0.25*0.91;                             // Fraction of Iodine-131 released from the fuel into the reactor containment
// As entire iodine escapes through air
Fb = 1;                                     // Fraction of 'Fp' which remains airborne and is capable of escaping from the building
// Calculation
C0 = alphai*Fp*Fb;
// Result
printf(" \n The activity of Iodine-131 in elemental form due to core meltdown = %.2E curie \n",C0);
