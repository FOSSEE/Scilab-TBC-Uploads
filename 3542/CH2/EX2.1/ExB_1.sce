// Example no B.1
// To determine SNR at the detector output stage
// Page no. 613

clc;
clear all;

// Given data
SNRin=20;                                         // SNR at the receiver antenna input terminal in dB
F=6;                                              // Noise figure in dB

// SNR at the detector output stage
SNRout=SNRin-F;                                  // SNR at the detector output stage in dB

// Displaying the result in command window
printf('\n SNR at the detector output stage = %0.0f dB',SNRout);
