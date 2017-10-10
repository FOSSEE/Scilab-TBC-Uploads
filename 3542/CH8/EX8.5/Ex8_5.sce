// Example no 8.5
// To compute the gross channel data rate
// Page no. 439

clc;
clear all;

// Given data
t=20*10^-3;                                          // Duration of encoding of one block in second
B1=50;                                               // The first bits in Type-1 channel
CRC1=10;                                             // Number of CRC bits in Type-1 channel
FEC=0.5;                                             // FEC rate for Type-1 channel
B2=132;                                              // Next bits in Type-2 channel
CRC2=5;                                              // Number of CRC bits in Type-2 channel
B3=78;                                               // The last bits in Type-3 channel

N1=(B1+CRC1)/FEC;                                    // Total number of bits transmitted in Type-1 channel
N2=(B2+CRC2);                                        // Total number of bits transmitted in Type-2 channel
N3=B3;                                               // Total number of bits transmitted in Type-3 channel
N=N1+N2+N3;                                          // Total number of channel bits transmitted enery t seconda

// The gross channel data rate
BR=N/t;                                              // The gross channel data rate in bps

// Displaying the result in command window
printf('\n The gross channel bit rate = %0.2f kbps',BR*10^-3);
