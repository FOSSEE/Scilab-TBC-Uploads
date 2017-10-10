// Example no 5.6
// To determine proper spatial sampling interval for small scale propagation, number of samples required over 10m, time required to make these measurements and Doppler spread for this channel
// Page no. 204

clc;
clear all;

// Given data
fc=1900*10^6;                                                    // Carrier frequency in Hz
v=50;                                                            // Velocity of propagation in m/s
c=3*10^8;                                                        // Speed of ligth in air in m/s
Tc=(9*c)/(16*%pi*v*fc);                                          // Coherence time

// The spatial sampling interval
deltax=(v*Tc)/2;                                                // Spatial sampling interval in meter

// The number of samples required over 10m travel distance
d=10;                                                           // Distance to be travelled
Nx=d/deltax;                                                    // Number of samples required over 10m
// Answer is varrying due to round-off error

// The time required to make these measurements
t=d/v;                                                          // Time required to make these measurements

// Doppler spread for this channel
BD=(v*fc)/c;                                                    // Doppler spread for this channel
// Answer is varrying due to round-off error

// Displaying the result in command window
printf('\n The proper spatial sampling interval for small scale propagation = %0.2f cm',deltax*10^2);
printf('\n The number of samples required over 10m travel distance = %0.0f',Nx);
printf('\n The time required to make these measurements = %0.1f seconds',t);
printf('\n The Doppler spread for this channel = %0.2f Hz',BD);
