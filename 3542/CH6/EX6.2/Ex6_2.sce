// Example no 6.2
// To compute a)the peak frequency deviation b)the modulation index.
// Page no. 265

clc;
clear all;

// Given data
kf=10*10^3;                                                     // Frequency deviation constant gain in Hz/V
fm=4*10^3;                                                      // Modulating frequency in Hz
A=4;                                                            // Maximum instantaneous value of input signal in V

// To compute the peak frequency deviation
deltaf=A*kf;                                                   // The peak frequency deviation in Hz

// To compute the modulation index
betaf=deltaf/fm;                                               // The modulation index

// Displaying the result in command window
printf('\n The peak frequency deviation = %0.0f kHz',deltaf*10^-3);
printf('\n The modulation index = %0.0f',betaf);
