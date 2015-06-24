// Scilab code Ex6.4: Pg 204 (2008)
clc; clear;
V_av = 3.5;     // Average value of sinusoidal alternating voltage, V
T = 6.67e-03;   // Time period of alternating voltage, s
V_m = V_av/0.637;   // Peak value of alternating voltage, V
f = 1/T;    // Frequency of alternating volatge, Hz
// Part (a)
t = 0.5e-03;    // Time taken by the waveform after passing through zero, s
v = V_m*sin(2*%pi*f*t);     // Instantaneous value of alternating voltage, s
printf("\nThe instantaneous value of alternating voltage after %3.1f ms = %3.1f volt", t/1e-03, v);
// Part (b)
t = 4.5e-03;    // Time taken by the waveform after passing through zero, s
v = V_m*sin(2*%pi*f*t);     // Instantaneous value of alternating voltage, s
printf("\nThe instantaneous value of alternating voltage after %3.1f ms = %3.1f volt", t/1e-03, v);

// Part (c)
v = 3;     // Alternating voltage after passing through zero, mA
t = asin(v/V_m)/(2*%pi*f);   // Time taken for current to reach 3 V, s
printf("\nThe time taken for voltage to reach %1d volt = %5.3f ms", v, t/1e-03);

// Result
// The instantaneous value of alternating voltage after 0.5 ms = 2.5 volt
// The instantaneous value of alternating voltage after 4.5 ms = -4.9 volt
// The time taken for voltage to reach 3 volt = 0.613 ms 

