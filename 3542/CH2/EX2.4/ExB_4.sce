// Example no B.4
// To determine average signal strength at the antenna terminal 
// Page no. 614

clc;
clear all;

// Given data
Pn=-119.5;                                                           // Average output thermal noise power in dBm
SNR=30;                                                              // SNR at the receiver output in dB

// To determine average signal strength at the antenna terminal to provide 30dB SNR
Ps=SNR+Pn;                                                           // Average signal strength at the antenna terminal

// Displaying the result in command window
printf('\n Average signal strength at the antenna terminal to provide 30dB SNR = %0.1f dBm',Ps);


