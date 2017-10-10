// Example 7.2
// Determine (a) Resolution (b) Number of steps required for the rotor to make 
// 20.6 revolutions (c) Shaft speed if the stepping frequency is 1800 pulses/s
// Page No. 287

clc;
clear;
close;

// Given data
betaa=2;               // Step angle
theta=20.6;            // Number of revolutions
fp=1800;               // Stepping frequency


// (a) Resolution
stepsperrev=360/betaa;      // Speed of machine


// (b) Number of steps required for the rotor to make 20.6 revolutions
steps=theta*360/betaa;


// (c) Shaft speed if the stepping frequency is 1800 pulses/s.
n=betaa*fp/360;


// Display result on command window
printf("\n Resolution = %0.0f  ",stepsperrev);
printf("\n Number of steps required for the rotor to make 20.6 revolutions = %0.0f  ",steps);
printf("\n Shaft speed if the stepping frequency is 1800 pulses/s = %0.0f r/s ",n);

