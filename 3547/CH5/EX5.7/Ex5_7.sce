// Example no.5.7
// To find the peak current if (a) LO power = 10 dBm, (b) LO power = −10 dBm for the balanced receiver
// Page no.234

clc;
clear;

// Given data
L=100;                                            // Length of fiber
loss=0.2*L;                                       // Total fiber loss
PtdBm=12;                                         // The peak power of the signal at the transmitter
R=0.9;                                            // Responsivity in A/W
PrdBm=PtdBm-loss;                                 // The power at the receiver

// (a) the peak current LO power = 10 dBm
PLO1dBm=10;                                       // Power at local oscillator in dBm
PLO1=10^(0.1*PLO1dBm);                            // Power at local oscillator in mW
Pr=10^(0.1*PrdBm);                                // Power at receiver in mW
Id1=2*R*sqrt(Pr*PLO1);                            // The peak current LO power = 10 dBm

// Display result on command window
printf('\n The peak current for LO power 10 dBm = %0.4f mA',Id1)

// (b) the peak current LO power = -10 dBm
PLO2dBm=-10;                                      // Power at local oscillator in dBm
PLO2=10^(0.1*PLO2dBm);                            // Power at local oscillator in mW
Id2=2*R*sqrt(Pr*PLO2);                            // The peak current LO power = -10 dBm

// Display result on command window
printf('\n The peak current for LO power -10 dBm = %0.4f mA',Id2)

// comment on the intermodulation cross-talk in a single-branch receiver and the balanced receiver
printf('\n A single-branch receiver would have a significant amount of cross-talk. In contrast, for a balanced receiver, intermodulation cross-talk is canceled out \n due to the balanced detection.') 
