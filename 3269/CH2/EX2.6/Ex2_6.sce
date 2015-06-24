// Example 2.6
clear all;
clc;

// Given data
T12 = 64.8;                                           // Half life = 64.8 hour
lambda = 0.693/T12;                                   // Decay constant in hour^(-1)
t = 12;                                               // Analysis time of gold sample in hours
alpha = 0.9;                                          // Activity of gold sample after analysis time

// 1. 
// Calculation
R = alpha/(1-exp(-lambda*t));
// Result
printf('\n Theoretical maximum activity = %3.1f curie (Ci) \n',R);

// 2. 
// Calculation
// The expression to calculate 80 percent of maximum activity is \n 0.8R = R*(1-exp(-lambda*t)) 
t = -log(0.2)/lambda;
// Result
printf('\n Time to reach 80 percent of maximum activity = %d hours \n',t);
