// Example 7_4
clc;funcprot(0);
// Given data
z_1=1;// m
z_2=10;// m
k=0.4;// The von Karman constant 
ubar_1=6;// m/s
ubar_2=9;// m/s

// Calculation
ustar=(ubar_2-ubar_1)/(2.5*log(10));// m/s
y_0=10/exp(ubar_2/(2.5*ustar));// m
C_f=(2*ustar^2)/ubar_2^2;// The friction coefficient
printf("\nu_*=%0.3f m/s \ny_0=%1.2e m \nThe friction coefficient,C_f=%1.2e",ustar,y_0,C_f);
