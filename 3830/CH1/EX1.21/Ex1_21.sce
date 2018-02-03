// Exa 1.21

clc;
clear;

// Given

// A Volt box design
Vs = 100; // Input voltage (V)
V2 = 5; // Output voltage (V)
Rs = 10*10^6; // Desired sum of resistance(R1+R2) Ohms


// Solution

// By voltage divider formula, we get
//  R2/(R1+R2) = V2/Vs ; 
// i.e, By simplifying
R2 = Rs*V2/Vs;

R1 = Rs - R2;
printf(' The desired values of R1 and R2 to satisfy Volt box requirements are %.1f M ohms and %.2f M ohms respectively \n ',R1/10^6,R2/10^6);

//The answer provided in the textbook is wrong
