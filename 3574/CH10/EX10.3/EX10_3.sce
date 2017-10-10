// Example 10.3
// Computation of no-load voltage if the voltage regulation is 2.3 percent
// Page No. 401

clc;
clear;
close;

// Given data
Vrated=240;               // Rated voltage
VR=0.023;                 // Voltage regulation


// No-load voltage if the voltage regulation is 2.3 percent

Vnl=Vrated*(1+VR);

// Display result on command window
printf("\n No-load voltage if the voltage regulation is 2.3 percent = %0.1f V ",Vnl);


