// Example 9.2
// Determine (a) Speed regulation (b) Governor drop
// Page 351

clc;
clear;
close;

// Given data
fn1=61.2;                   // No-load frequency
frated=60;                  // Rated requency
deltaP=500;                 // Governor rated power
// (a) Speed regulation
GSR=(fn1-frated)/frated;

// (b) Governor drop
deltaF=(fn1-frated);        // Frequency difference
GD=deltaF/deltaP;

// Display result on command window
printf("\n Speed regulation = %0.2f  ",GSR);
printf("\n Governor drop = %0.5f Hz/kW ",GD);
 
