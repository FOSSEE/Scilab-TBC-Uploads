// Example no 6.3
// To determine the IF bandwidth necessary to pass the given signal.
// Page no. 267

clc;
clear all;

// Given data
fm=100*10^3;                                                 // Modulating frequency in Hz
deltaf=500*10^3;                                             // Peak frequency deviation in Hz
betaf=deltaf/fm;                                             // Modulation index

// The IF bandwidth occupied by FM signal using Carson's rule
BT=2*(betaf+1)*fm;                                          // The IF bandwidth necessary to pass the given signal

// Displaying the result in command window
printf('\n Using Carson rule, the IF bandwidth occupied by FM signal = %0.0f kHz',BT*10^-3);
