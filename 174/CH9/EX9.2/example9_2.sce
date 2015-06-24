// To find minimum detectable signal
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 9-2 in Page 277


clear; clc; close;

// Given data
NF = 20; //Noise figure in dB
BW = 1*10^3; //Bandwidth in Hz

//Calculations
MDS = -114 +10* log10 ([BW/(1*10^6)]) +NF;
printf("The minimum detectable signal of the spectrum analyser = %d dBm",MDS);

//Result
// The minimum detectable signal of the spectrum analyser = -124 dBm 

