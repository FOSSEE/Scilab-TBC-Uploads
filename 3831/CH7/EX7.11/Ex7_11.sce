// Example 7_11
clc;funcprot(0);
// Given data
T=30;// °C
mu=0.10;// N.s/m^2
dVbydx=1000;// s^-1

// Calculation
Sigma_w=(mu*dVbydx^2)/(T+273.15);// N/m^2.s.K
Sigma_w=Sigma_w/10^3;// kJ/(m^3.s.K)
printf('\nThe entropy production rate per unit volume,Sigma_w-vis=%0.2f kJ/(m^3.s.K)',Sigma_w);
