// Example 7_8
clc;funcprot(0);
// Given data
V=2.50*10^-3;// m^3
Sigma_Q=53.7;// W/k.m^3
tau=30.0;// min

// Solution
S_pQ=Sigma_Q*V*tau*60;// J/K
printf('\nThe heat production of entropy inside this motor,(S_p)_Q=%3.0f J/K',S_pQ);
