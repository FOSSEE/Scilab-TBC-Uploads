// Example no 9.3
// To find number of simultaneous users accommodated in GSm
// Page no. 455

clc;
clear all;

// Given data
m=8;                                                // Maximum speech channels supported by single radio channel
Bc=200*10^3;                                        // Radio channel bandwidth in Hz
Bt=25*10^6;                                         // Total spectrum allocated for forward link
Bguard=0;                                           // Guard band allocated in Hz

// The number of simultaneous users accommodated in GSm
N=(m*(Bt-2*Bguard))/Bc;                             // The number of simultaneous users

// Displaying the result in command window
printf('\n The number of simultaneous users accommodated in GSM system = %0.0f',N);
