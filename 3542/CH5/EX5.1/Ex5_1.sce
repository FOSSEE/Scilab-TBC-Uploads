// Example no 5.1
// To compute received carrier frequency if mobile is moving a)towards the transmitter b)away from the transmitter c)in the direction perpendicular to arrival direction of transmitted signal
// Page no. 180

clc;
clear all;

// Given data
fc=1850*10^6;                                            // Carrier frequency in Hz
c=3*10^8;                                                // Speed of ligth in m/s
v=60;                                                    // Speed of receiver (vehicle) in mph
v=v*0.44704;                                             // Speed of receiver (vehicle) in m/s
lambda=0.162;//c/f;                                      // Wavelength in m

// a)To compute received carrier frequency if mobile is moving towards the transmitter
theta=0;                                                 // Angle between direction of receiver and transmitter
fd=(v/lambda)*cos(theta);                                // Doppler shift
f=(fc+fd)*10^-6;                                         // Received carrier frequency in MHz

// Displaying the result in command window
printf('\n The received carrier frequency when mobile is moving towards the transmitter = %0.5f MHz',f);

// b)To compute received carrier frequency if mobile is moving away from the transmitter
theta=180;                                               // Angle between direction of receiver and transmitter
fd=(v/lambda)*cos(theta);                                // Doppler shift
f=(fc+fd)*10^-6;                                         // Received carrier frequency in MHz

// Displaying the result in command window
printf('\n The received carrier frequency when mobile is moving away from the transmitter = %0.6f MHz',f);

// c)To compute received carrier frequency if mobile is moving in the direction perpendicular to arrival direction of transmitted signal
theta=90;                                                // Angle between direction of receiver and transmitter
fd=(v/lambda)*cos(theta);                                // Doppler shift
f=(fc+fd)*10^-6;                                         // Received carrier frequency in MHz

// Displaying the result in command window
printf('\n The received carrier frequency when mobile is moving in the direction perpendicular to arrival direction of transmitted signal = %0.0f MHz',f);
