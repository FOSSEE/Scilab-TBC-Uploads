// Example no 6.11
// To find 3-dB bandwidth for gaussian low pass filter to produce 0.25GMSK, 90% power bandwidth.
// Page no. 321

clc;
clear all;

// Given data
Rb=270*10^3;                                                  // Channel data rate in bps
BT=0.25;                                                      // 3-dB bandwidth-bit duration product

T=1/Rb;                                                       // Time
B=BT/T;                                                       // 3-dB bandwidth in Hz
// Answer is varrying due to round-off error

// 90% power bandwidth
B1=0.57*Rb;                                                   // The 90% power bandwidth
// Answer is varrying due to round-off error

// Displaying the result in command window
printf('\n The 3-dB bandwidth-bit duration product = %0.3f kHz',B*10^-3);
printf('\n The 90 percent power bandwidth = %0.1f kHz',B1*10^-3);
