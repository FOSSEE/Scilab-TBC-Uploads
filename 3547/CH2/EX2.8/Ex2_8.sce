// Example no 2.8
// To find the total loss and output power in mW and dBm in fiber
// Page no. 72

clc;
clear;

// Given data
losscoe=0.046;                                 // Loss coefficient in km^-1
L=80;                                          // Length of fiber in km
PindBm=3;                                      // Input power in dBm

// To find total loss of fiber
loss=round(4.343*losscoe*L);                   // Total loss in fiber

// Displaying the result in command window
printf('\n Total loss in fiber = %0.0f dB',loss);

// To find output power 
PoutdBm=PindBm-loss;                           // Output power in dBm

PoutmW=10^(PoutdBm/10);                        // Output power in mW

//Displaying the result in command window
printf('\n Output power of fiber = %0.0f dBm',PoutdBm);
printf('\n Output power of fiber = %0.2f mW',PoutmW);
