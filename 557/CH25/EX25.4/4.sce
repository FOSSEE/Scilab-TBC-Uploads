clc; funcprot(0);
// Example 25.4 

//Initializing the variables
Pa_P1 = -200; // From previous Question
Q = 1.4311 ; // From previous questions.

//Calculations
DpSys = Pa_P1 + 98.9*Q^2;
disp(DpSys,"System Operating point (m3/s):");