// Exa 4.5

clc;
clear all;
// Refer circuit diagram in  Fig. 4.5  page no.79

// Given data

Ifsd=50; // Full scale deflection current (micro Amp)
Rm= 1000; // Internal resistance in Ohms
V1= 5; // Range of voltmeter 1 (V)
V2=10; //Range of voltmeter 2 (V)
V3=50;// Range of voltmeter 3 (V)

// Solution

S= 1/(Ifsd*10^-6);  // Sensitivity of voltmeter in Ohms/V
 // The value of multiplier resistance for different ranges

// For 5V range
Rs1= S*V1-Rm;

// For 10V range
Rs2= S*V2-Rm;
// For 50V range
Rs3=S*V3-Rm;

printf(' The value of multiplier resistance for 0-5V , 0-10V and 0-50V range are \n  %d k Ohms, %d k Ohms, %d k Ohms respectively \n ',Rs1/1000,Rs2/1000,Rs3/1000);
