// Example 4_7
clc;funcprot(0);
// Given data
D_1=0;// m
D_2=0.0500;// m
Sigma_s=0.0400;// N/m  (constant)

// Solution
A_1=0;// m^2
R_2=D_2/2;// m
A_2=2*(4*%pi*R_2^2);// m^2
W_12=-Sigma_s*(A_2-A_1);// J
W_12=W_12/1055;// Btu
printf('\nThe amount of surface tension work required to inflate the soap bubble,(W_12)_surface tension=%1.2e Btu',W_12);
