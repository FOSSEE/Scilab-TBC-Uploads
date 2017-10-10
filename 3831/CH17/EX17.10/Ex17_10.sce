// Example 17_10
clc;funcprot(0);
// Given data
T=27+273;
k_d=0.0350;

// Calculation
alpha=k_d/(T*exp((9.62*10^4*((T-330)/(330*T)))-33.2));
disp(alpha)
