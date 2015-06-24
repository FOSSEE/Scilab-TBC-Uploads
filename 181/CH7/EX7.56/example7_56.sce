// Verify FET operation in pinch-off region
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-56 in page 358

clear; clc; close;

// Given data
Vp=-2; // Pinch off voltage in V
Idss=4*10^-3; // Drain-source current in mA
Rd=910; // Drain resistance in ohms
Rs=3*10^3; // Source resistance in K-ohms
R1=12*10^6; // R1 value in M-ohms
R2=8.57*10^6; // R2 value in M-ohms
Vdd=24; // Drain voltage in V

// Calculation
Vgg = Vdd*R2/(R1+R2);
Id1=(73+sqrt(73^2-(4*9*144)))/(2*9);
Id2=(73-sqrt(73^2-(4*9*144)))/(2*9);
printf("Id = %0.2e A or %0.2e A\n",Id1,Id2);
printf("A value of 3.39 mA is selected\n");
Vgsq=10-(3.39*10^-3*3*10^3);
Vdsq=Vdd-(3.39*10^-3*3.91*10^3);
Vdgq=Vdsq-Vgsq;
printf("Vgsq = %0.2fV\nVdsq = %0.2fV\nVdgq = %0.3f V\n",Vgsq,Vdsq,Vdgq);
printf("Vdgq>Vd.Hence the FET is in the pinch off region");

// Result
// FET operates in the pinch off region