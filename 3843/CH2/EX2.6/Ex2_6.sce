// Example 2_6
clc;funcprot(0);
// Given data
// T(z)=15-0.00651°C
z_0=0;// m
P=101;// m
z_1=3000;// m

// Calculation
// Using the given equation for T(z) we have
// dP=P/(29.3)*(288-0.00651 z)
// By solving this equation,we get
P=101*exp(-0.368);// kPa
printf("\nThe pressure at an elevation of 3000 m,P=%2.1f kPa.",P);
