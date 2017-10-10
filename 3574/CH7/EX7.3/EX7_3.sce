// Example 7.3
// Determine (a) Synchronous speed (b) Rail speed assuming slip of 16.7%
// Page No. 299

clc;
clear;
close;

// Given data
f=50;               // Frequency of machine
tau=0.24;           // Pole pitch
s=0.167;            // Slip

// (a) The synchronous speed 
Us=2*tau*f;

// (b) Rail speed assuming slip of 16.7 percent
U=Us*(1-s);


// Display result on command window
printf("\n The synchronous speed = %0.0f m/s ",Us);
printf("\n Rail speed assuming slip of 16.7 percent = %0.1f m/s ",U);

