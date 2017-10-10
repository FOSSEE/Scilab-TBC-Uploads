// Example no.5.6
// To find the peak current if (a) LO power = 10 dBm, (b) LO power = −10 dBm for the single-branch receiver
// Page no.229

clc;
clear;

// Given data
L=100;                                           // Length of fiber
loss=0.2*L;                                      // Total fiber loss
PtdBm=12;                                        // The peak power of the signal at the transmitter
R=0.9;                                           // Responsivity in A/W
PrdBm=PtdBm-loss;                                // The power at the receiver

// (a) the peak current LO power = 10 dBm
PLO1dBm=10;                                         // Power at local oscillator in dBm
PLO1=10^(0.1*PLO1dBm);                              // Power at local oscillator in mW
Pr=10^(0.1*PrdBm);                                  // Power at receiver in mW
Id1=R*sqrt(Pr*PLO1);                                // The peak current at LO power = 10dBm
I1=R*Pr/2+R*sqrt(Pr*PLO1);                          // The peak current after ignoring the d.c. term

// Display result on command window
printf('\n The peak current at LO power 10dBm = %0.4f mA',Id1)
printf('\n The peak current after ignoring the d.c. term = %0.3f mA',I1)

// (b) the peak current LO power = -10 dBm
PLO2dBm=-10;                                      // Power at local oscillator in dBm
PLO2=10^(0.1*PLO2dBm);                            // Power at local oscillator in mW
Id2=R*sqrt(Pr*PLO2);                              // The peak current at LO power = -10dBm
I2=R*Pr/2+R*sqrt(Pr*PLO2);                        // The peak current after ignoring the d.c. term

// Display result on command window
printf('\n The peak current at LO power -10dBm = %0.4f mA',Id2)
printf('\n The peak current after ignoring the d.c. term = %0.4f mA',I2)
