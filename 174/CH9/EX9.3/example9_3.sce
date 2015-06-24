// To find dynamic range and total frequency display
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 9-3 in Page 285


clear; clc; close;

// Given data
T = 4; //Sample window in s
f_s = 20*10^3; // sample frequency in Hz
N = 10; //no of bits

//Calculations
f_r = 1/T;
f_h = f_s/2; 
R_d = 20*log10(2^N);

printf("The ratio of the spectral calculation = %0.2f Hz\n",f_r);
printf("The maximum calculated spectral frequency = %d Hz\n",f_h);
printf("The dynamic range = %d dB",R_d);

//Result
// The ratio of the spectral calculation = 0.25 Hz
// The maximum calculated spectral frequency = 10000 Hz
// The dynamic range = 60 dB 
