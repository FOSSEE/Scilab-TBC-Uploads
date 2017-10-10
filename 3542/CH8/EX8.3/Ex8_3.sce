// Example no 8.3
// To compute the minimum encoding rateof given 4 sub-band coder
// Page no. 427

clc;
clear all;

// Given data
N=4;                                                   // Total number of sub-bands
L1=225;                                                // Lower limit of first sub-band
U1=450;                                                // Lower limit of first sub-band
L2=450;                                                // Lower limit of second sub-band
U2=900;                                                // Lower limit of second sub-band
L3=1000;                                               // Lower limit of third sub-band
U3=1500;                                               // Lower limit of third sub-band
L4=1800;                                               // Lower limit of fourth sub-band
U4=2700;                                               // Lower limit of fourth sub-band
E1=4;                                                  // Encoding bit of first sub-band
E2=3;                                                  // Encoding bit of second sub-band
E3=2;                                                  // Encoding bit of third sub-band
E4=1;                                                  // Encoding bit of fourth sub-band

// Sampling rate of the sub-bands according to Nyquist theorem
sr1=2*(U1-L1);                                         // Sampling rate of first sub-band in samples/second
sr2=2*(U2-L2);                                         // Sampling rate of second sub-band in samples/second
sr3=2*(U3-L3);                                         // Sampling rate of third sub-band in samples/second
sr4=2*(U4-L4);                                         // Sampling rate of fourth sub-band in samples/second

// Total encoding rate
SR=sr1*E1+sr2*E2+sr3*E3+sr4*E4;                        // Total encoding rate in bps

// Displaying the result in command window
printf('\n Total encoding rate = %0.1f kbps',SR*10^-3);
