// Example 3_2
clc;funcprot(0);
// Given data
T_1=250;// K
T_2=800;// K
beta_1=48.0*10^-6;// K^-1
beta_2=60.7*10^-6;// K^-1
V_1=1.00;// cm^3

// Solution
beta_avg=(beta_2+beta_1)/2;// K^-1
beta=beta_avg;// K^-1
V_2=V_1*exp(beta*(T_2-T_1));// The final volume in cm^3
printf('\nThe volume of the block,V_2=%1.2f cm^3',V_2);
