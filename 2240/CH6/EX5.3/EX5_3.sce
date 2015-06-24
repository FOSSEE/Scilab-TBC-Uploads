// Grob's Basic Electronics 11e
// Chapter No. 05
// Example No. 5_3
clc; clear;
// Two branches R1 and R2 across the 120-V power line draw a total line current It of 15 A. The R1 branch takes 10 A. How much is the current I2 in the R2 branch?

// Given data

I1 = 10;        // Current in R1 branch=10 Amps
It = 15;        // Total Current=15 Amps

I2 = It-I1;
disp (I2,'The Current in R2 branch in Amps')
