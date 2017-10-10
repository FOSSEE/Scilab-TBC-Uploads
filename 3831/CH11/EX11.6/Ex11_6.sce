// Example 11_6
clc;funcprot(0);
// Given data
L_0=0.0700;// m
L=0.200;// m
T=20.0;// °C
K=0.150;// N/K

// Solution
Q_12=(-K*(T+273.15)*L_0*((L/L_0)-1)^3)/3;// N.m
printf("\n(c)The required heat transfer,Q_12=%1.2f N.m",Q_12);
