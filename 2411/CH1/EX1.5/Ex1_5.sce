// Scilab Code Ex1.5: Page-11 (2008)
clc; clear;
m1 = 2;    // Mass of first body, kg
m2 = 1;    // Mass of second body, kg
F = 3;    // The horizontal force applied to the mass m1, N
F_prime = m2/(m1 + m2)*F;    // Force of contact between m1 and m2, N
printf("\nThe force of contact between m1 and m2 = %3.1f N", F_prime);
F_prime = m1/(m1 + m2)*F;    // Force of contact when F is applied to m2, N
printf("\nThe force of contact when F is applied to m2 = %3.1f N", F_prime);

// Result 
// The force of contact between m1 and m2 = 1.0 N
// The force of contact when F is applied to m2 = 2.0 N 
