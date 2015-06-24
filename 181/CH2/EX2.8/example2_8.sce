// Calculate width of depletion layer
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 2-8 in page 87

clear; clc; close;

// Given data
V=[10.2 0.3 0.1]; // Applied voltages in V
epsln=16; // Constant of calculation
A=1*10^-6; // Cross sectional area in m^2

// Calculation
alp=[1 2 3];
for i=1:3
    W=sqrt((V(i)*10^-10)/14.3);
    printf("(%0.0f)Width of depletion layer for %0.2f V = %0.2e mu-m\n\n",alp(i),V(i),W);
end
W=[8.5 1.45];
alp1=[1 2];
for j=1:2
    C_T=(epsln*10^-9)/(36*%pi*W(j));
    printf("(%0.0f)Space charge capacitance for %0.2f mu-m = %0.2e F\n\n",alp(j),W(j),C_T);
end

// Result
// Widths of depletion layer are: 
// (a) 8.5 mu-m
// (b) 1.45 mu-m 
// (c) 0.84 mu-m respectively
// Space charge capacitances are:
// (a) 16.65 pF 
// (b) 97.6 pF respectively