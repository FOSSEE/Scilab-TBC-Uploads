// Exa 4.1
// To calculate the sampling rate.

clc;
clear all;

Fm=20;  // in KHz

//solution
disp(" An Engineering version of the Nyquist sampling rate : fs>=2.2*fm.");
printf('Therefore sampling rate of >= %d ksps should be used ',(2.2*Fm)); 
disp("The sampling rate for a compact disc digital audio player = 44.1 ksps and for a studio quality audio player = 48 ksps are used.")
