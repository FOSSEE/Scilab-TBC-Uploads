//Example 9.7 (b)
//Program To Determine Record Length of Bartlett, 
//Welch(50% Overlap) and Blackmann-Tukey Methods
clear;
clc;
close;
//Data
Q=10;//Quality Factor
N=1000;//Samples
//RECORD LENGTH CALCULATION
lb=N/Q;
lw=16*N/(9*Q);
lbt=3*N/(2*Q);
//Display the result in command window
disp(lb,"Record Length of Bartlett Method");
disp(lw,"Record Length of Welch(50% overlap) Method");
disp(lbt,"Record Length of Blackmann-Tukey Method");
