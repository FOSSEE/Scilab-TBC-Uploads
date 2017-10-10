// Example no 6.7
// To determine the maximum theoretical datarate and to compare this rate to GSM standard
// Page no. 280

clc;
clear all;

// Given data
SNR1=10;                                          // Signal to noise ratio in dB
SNR2=30;                                          // Signal to noise ratio in dB
B=200*10^3;                                       // RF bandwidth of channel in Hz

SNR1=10^(SNR1/10);                                // Signal to noise ratio
SNR2=10^(SNR2/10);                                // Signal to noise ratio

// To determine the maximum theoretical datarate
C1=B*(log10(1+SNR1)/log10(2));                    // The maximum theoretical datarate for SNR=10dB
C2=B*(log10(1+SNR2)/log10(2));                    // The maximum theoretical datarate for SNR=30dB

// Displaying the result in command window
printf('\n The maximum theoretical datarate for 10dB SNR = %0.3f kbps',C1*10^-3);
printf('\n The maximum theoretical datarate for 30dB SNR = %0.2f Mbps',C2*10^-6);
printf('\n \n The GSM data rate is 270.833 kbps, which is only about 40 percent of the theoretical limit of 10dB SNR condition\n and about 14 percent of theoretical limit of 30dB SNR condition');

