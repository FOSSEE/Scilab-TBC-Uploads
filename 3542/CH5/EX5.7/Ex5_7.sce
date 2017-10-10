// Example no 5.7
// To compute the positive-going lvel crossing rate and maximum velocity of mobile
// Page no. 224

clc;
clear all;

// Given data
rho=1;                                       // Value of normalized level of fading amplitude to rms amplitude
fm=20;                                       // Maximum Doppler frequency in Hz
fc=900*10^6;                                 // Carrier frequency in Hz
c=3*10^8;                                    // Speed of ligth in air in m/s

// The positive-going level crossing rate
NR=sqrt(2*%pi)*fm*rho*exp(-rho^2);           // Number of zero level crossings per second
lambda=c/fc;                                 // Carrier wavelength

// The maximum velocity of mobile
v=fm*lambda;                                 // Maximum velocity of mobile in m/s
v=v*(18/5);                                  // Maximum velocity of mobile in km/hr

// Displaying the result in command window
printf('\n The positive-going level crossing rate = %0.2f crossings per second',NR);
printf('\n The maximum velocity of mobile = %0.0f Km/Hr',v);
