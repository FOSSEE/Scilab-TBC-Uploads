// Example 1_1
clc;funcprot(0);
// Given data
h_avg=3800;// The ocean's average depth in m
deltaT=1;// The increase in ocean temperature in K
alpha=1.6*10^-4;// The average thermal expansion coefficient in K^-1

// Calculation
deltah=alpha*deltaT*h_avg;// The rise in sea level in m
printf('\nThe rise in sea level is %0.3f m',deltah);
