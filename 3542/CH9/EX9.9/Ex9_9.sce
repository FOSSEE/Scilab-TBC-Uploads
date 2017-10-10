// Example no 9.9
// To determine the maximum number of users using a)omnidirectional base station antenna and no voice activity b)three-sectors at the base station and voice activity detection
// Page no. 472

clc;
clear all;

// Given data
W=1.25*10^6;                                                                  // Total RF bandwidth in Hz
R=9600;                                                                       // Baseband information bit rate in bps
EbNo=10;                                                                      // Minimum acceptable SNR in dB

// a)Maximum number of users using omnidirectional base station antenna and no voice activity
N1=1+(W/R)/EbNo;                                                              // Maximum number of users using omnidirectional

// b)Maximum number of users using three-sectors at the base station antenna and voice activity with alpha=3/8
alpha=3/8;                                                                    // Voice activity factor
Ns=1+(1/alpha)*((W/R)/EbNo);                                                  // Maximum number of users
N2=3*Ns;                                                                      // Maximum number of users using three-sectors

// Displaying the result in command window
printf('\n Maximum number of users using omnidirectional base station antenna and no voice activity = %0.0f',N1);
printf('\n Maximum number of users using three-sectors at the base station antenna and voice activity (with alpha=3/8) = %0.0f',N2);
