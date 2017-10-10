// Example no 7.3
// To determine a)the maximum Doppler shift b)the coherence time of the channel c)the maximum number of symbolsthat could be transmitted
// Page no. 373

clc;
clear all;

//Given data
f=900*10^6;                                                  // Carrier frequency in Hz
c=3*10^8;                                                    // Speed of ligth in air (m/s)
v=80;                                                        // Velocity of mobile in km/hr
v=v*(5/18);                                                  // Velocity of mobile in m/s
lambda=c/f;                                                  // Carrier wavelength in meter

// a)To determine the maximum Doppler shift
fd=v/lambda;                                                 // The maximum Doppler shift in Hz

// b)To determine the coherence time of the channel
Tc=sqrt(9/(16*%pi*fd^2));                                   // The coherence time of the channel
// Answer is varrying due to round-off error

// c)To determine the maximum number of symbols that could be transmitted with symbol rate 24.3 ksymbols/sec
Rs=24.3*10^3;                                              // Symbol rate in symbols/sec
Nb=Tc*Rs;                                                  // The maximum number of transmitted symbols

// Displaying the result in command window
printf('\n The maximum Doppler shift = %0.2f Hz',fd);
printf('\n The coherence time of the channel = %0.2f ms',Tc*10^3);
printf('\n The maximum number of symbols that could be transmitted with symbol rate 24.3 ksymbols/sec = %0.0f symbols',Nb);
