// Example 8_14
clc;funcprot(0);
// Given data
T=30.0;// °C
phi=5.00;// V
I=10.0;// mA

// Solution
S_P_W=(phi*I*10^-3)/(T+273.15);// W/K
printf("\nThe entropy production rate of the circuit board,(S_P)_W=%1.2e W/K",S_P_W);
