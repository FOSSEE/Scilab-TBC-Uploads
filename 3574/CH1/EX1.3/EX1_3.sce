// Example 1.3
// Computation of hysteresis loss if the apparatus is connected to a 60 Hz source 
//Page No. 16

clc;
clear all;
close;
 
// Given data
V=240;                 // Rated voltage
F1=25;                 // Rated frequency
Ph2=846;               // hysteresis loss
F2=60;                 // Source Frequency
Bmax1=0.62             // Flux density is 62 percent of its rated value 1
Bmax2=1.0              // Flux density is 62 percent of its rated value 2
Sc=1.4                 // Steinmetz exponents

//  hysteresis loss if the apparatus is connected to a 60 Hz source 
Ph1=Ph2*[(F2/F1)*(Bmax1/Bmax2)^Sc];
Ph1=Ph1/1000;

//Display result on command window
printf("\n Hysteresis loss if the apparatus is connected to a 60 Hz source = %0.2f kW",Ph1);


 
