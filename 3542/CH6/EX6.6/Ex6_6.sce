// Example no 6.6
// To determine the maximum theoretical datarate and to compare this rate to US digital cellular standard
// Page no. 280

clc;
clear all;

// Given data
SNR=20;                                            // Signal to noise ratio of wireless communication link in dB
B=30*10^3;                                         // RF bandwidth in Hz
SNR=10^(SNR/10);                                   // Signal to noise ratio of wireless communication link

// To determine the maximum theoretical datarate 
C=B*(log10(1+SNR)/log10(2));                       // The maximum theoretical datarate in bps

// Displaying the result in command window
printf('\n The maximum theoretical datarate = %0.2f kbps',C*10^-3);
printf('\n The USDC data rate is 48.6 kbps, which is only about one fourth the theoretical limit under 20dB SNR condition.');
