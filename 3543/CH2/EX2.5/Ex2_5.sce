// Example 2.5
// Calculation of maximum transmission distance
// Page no 47
clc;
clear;
close;

// Given data
Pi=1*10^-3;                   // Input power
A=0.5;                        // Atteuation
Po=50*10^-6;                  // Output Power

// Maximum transmission distance
L=(10/A)*log10(Pi/Po);         

//Display result on command window
printf("\n Maximum transmission distance (in km) = %0.0f  ",L);



