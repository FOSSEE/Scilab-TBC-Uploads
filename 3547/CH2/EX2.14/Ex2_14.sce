// Example No. 2.14
// To calculate the lower limit on the transmitter power in dBm and mW units.
// Page No. 83

clc;
clear;

// Given data
l=80;                                             // Length of fiber in km
F1=-0.2*l;                                        // Fiber loss in dB
F2=-0.5;                                          // Filter loss in dB
G=15;                                             // Amplifier gain in dB
Pout=-3;                                          // Minimum power required at the receiver in dBm

// Lower limit on the transmitter power
Pin=Pout-F1-F2-G;                                 // Lower limit on the transmitter power in dBm
PinmW=10^(0.1*Pin);                               // Lower limit on the transmitter power in mW

// Displaying the result in command window
printf('\n The lower limit on the transmitter power in dBm = %0.1f',Pin);
printf('\n The lower limit on the transmitter power in mW = %0.4f',PinmW);

