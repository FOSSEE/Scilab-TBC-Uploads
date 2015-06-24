// Scilab code Ex6.3: Pg 204 (2008)
clc; clear;
V_av = 3.5;     // Average value of sinusoidal alternating voltage, V
T = 6.67e-03;   // Time period of alternating current, s
V_m = V_av/0.637;   // Peak value of alternating current, V
f = 1/T;    // Frequency of alternating volatge, Hz
printf("\nThe standard expression for %3.1f voltage = %3.1f sin(%3d*pi*t) volt", V_av, V_m, round(2*f));

// Result
// The standard expression for 3.5 voltage = 5.5 sin(300*pi*t) volt 
