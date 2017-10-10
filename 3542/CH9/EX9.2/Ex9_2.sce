// Example no 9.2
// To find number of channels available
// Page no. 452

clc;
clear all;

// Given data
Bt=12.5*10^6;                                            // Total spectrum allocation in Hz
Bguard=10*10^3;                                          // Guard band allocated in Hz
Bc=30*10^3;                                              // Channel bandwidth in Hz

// The number of channels available
N=(Bt-2*Bguard)/Bc;                                      // The number of channels available

// Displaying the result in command window
printf('\n The number of channels available in FDMA system = %0.0f',N);
