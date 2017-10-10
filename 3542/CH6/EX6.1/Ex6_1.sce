// Example no 6.1
// To compute the carrier power, percentage of total power in carrier power and power in each sideband.
// Page no. 260

clc;
clear all;

// Given data
PAM=10*10^3;                                                             // Power of transmitted AM signal
k=0.6;                                                                   // Modulation index

// To compute the carrier power
Pc=PAM/(1+k^2/2);                                                        // The carrier power

// To compute percentage of total power in carrier power
PercentPc=(Pc/PAM)*100;                                                  // Percentage of total power in carrier power

// To compute power in each sideband
Psideband=(PAM-Pc)/2;                                                    // The power in each sideband
// Answer is varrying due to round-off error

// Displaying the result in command window
printf('\n The carrier power = %0.2f kW',Pc*10^-3);
printf('\n The percentage of total power in carrier power = %0.1f percentage',PercentPc);
printf('\n The power in each sideband = %0.3f kW',Psideband*10^-3);
