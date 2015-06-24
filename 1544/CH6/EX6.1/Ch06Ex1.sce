// Scilab code Ex6.1: Pg 202 (2008)
clc; clear;
// Comparing alternating voltage v = 35*sin(314.2*t) with the standard Eq.
// Part (a)
V_m = 35;  // Maximum value of alternating voltage, volt

// Part (b)
f = poly(0, "f");       // Declare a variable for freq.
f = roots(2*%pi*f - 314.2);     // Frequency of waveform, Hz

// Part (c)
T = 1/f;    // Time period of waveform, sec

// Part (d)
t = 3.5;    // Time with reference to zero crossing, sec
v = 35*sin(2*%pi*50*3.5*1e-03);    // Volatge value after the waveform passes through zero, going positive

printf("\nThe maximum value of alternating voltage = %2d volt", V_m);
printf("\nThe frequency of alternating voltage = %2d Hz", f);
printf("\nThe time period of alternating voltage = %3.1f ms", T/1e-03);
printf("\nThe volatge value after the waveform passes through zero = %5.2f volt", v);

// Result
// The maximum value of alternating voltage = 35 volt
// The frequency of alternating voltage = 50 Hz
// The time period of alternating voltage = 20.0 ms
// The volatge value after the waveform passes through zero = 31.19 volt
