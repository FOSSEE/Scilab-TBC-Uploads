// Find gain if v2,v1 are zero
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-6 in page 315

clear; clc; close;

// Given data
mu=30; // FET parameter
rd=15; // Resistance value in k-ohms
Rd=1; // Drain resistance value in k-ohms
Rs=0.5; // Source resistance in k-ohms

// Calculation
Av1=(-mu*(rd+Rd))/(Rd+((mu+1)^2*Rs)+((mu+2)*rd));
Av2=((mu/(mu+1))*(((mu+1)*Rs)+rd))/(((Rd+rd)/(mu+1))+((mu+1)*Rs)+rd);
printf("(a)Av when v2 is zero = %0.3f\n",Av1);
printf("(b)Av when v1 is zero = %0.3f",Av2);

// Result
// (a) Av1 = -0.499
// (b) Av2 = 0.952