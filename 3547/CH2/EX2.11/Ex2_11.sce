// Example no.2.11
// To find a)length of DCF b)power at the output of DCF c)gain of amplifier
// Page no.80

clc;
clear;

// Given data
LTF=80;                                                    // Length of transmission fiber
beta2TF=-21;                                               // Dispersion of transmission fiber in ps^2/km
beta2DCF=130;                                              // Dispersion of DCF in ps^2/km
Pin=2*10^(-3);                                             // Input power of transmission fiber in W
DCFloss=0.5;                                               // Losses of DCF in dB/km
TFloss=0.2;                                                // Losses of TF in dB/km
spliceloss=0.5;                                            // Splice loss in dB

// a)To find length of DCF
LDCF=(-beta2TF*LTF)/beta2DCF;                             // Length of DCF in km

// Displaying the result in command window
printf('\n Length of DCF = %0.1f km',LDCF);

// b)To find power at the output of DCF
PindBm=10*log10(Pin/10^(-3));                            // Input power of transmission fiber in dBm
Totalloss=TFloss*LTF+DCFloss*LDCF+spliceloss;            // Total loss in fiber in dB
PoutdBm=PindBm-Totalloss;                                // Output power of DCF in dBm

// Displaying the result in command window
printf('\n Output power of DCF = %0.2f dBm',PoutdBm);

// c)To find gain of amplifier
gain=Totalloss;                                        // gain of amplifier

// Displaying the result in command window
printf('\n Gain of amplifier = %0.2f dBm',gain);

