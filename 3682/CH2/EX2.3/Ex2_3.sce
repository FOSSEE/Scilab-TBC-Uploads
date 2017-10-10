// Exa 2.3

clc;
clear;

// Given data

// Single op-amp amplifier.
ACL = 5; // Required gain(positive) 

// Solution

disp("Since the gain is positive, we have to make a non-inverting amplifier.");
disp("Referring Fig. 2.7(a), select R1 = 10 kΩ.");
R1 = 10*10^3; //Input resistance in Ω
// Then from eqn. (2.20), we get, ACL = 1+ (Rf/R1);
// Therefore
Rf = (ACL-1)*R1;  //Feedback resistance in Ω   
printf(' The calculated feedback resistance of amplifier i.e Rf = %d kΩ.\n',Rf/1000);
