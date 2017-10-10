// Example 2.4
// a)To convert transmitted power into dBm b)To convert received power into mW
// Page no. 61

clc;
clear;

// Given data
Ptr=0.012;                               // Transmitted power in watt 
PrdBm=-5;                                // Received power in dBm

// a)To convert transmitted power into dBm
PtrdBm=10*log10(Ptr/(10^-3));            // Transmitted power in dBm

// Displaying the result in command window
printf('\n Transmitted power = %0.2f dBm',PtrdBm);

// b)To convert received power into mW
PrmW=10^(-5/10);                        // Received power in mW

// Displaying the result in command window
printf('\n Received power = %0.4f mW',PrmW);
