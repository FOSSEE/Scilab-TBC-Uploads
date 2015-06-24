//Example 9.7 (a)
//Program To Determine Frequency Resolution of Bartlett, 
//Welch(50% Overlap) and Blackmann-Tukey Methods
clear;
clc;
close;
//Data
Q=10;//Quality Factor
N=1000;//Samples
//FREQUENCY RESOLUTION CALCULATION
K=Q;
rb=0.89*(2*%pi*K/N);
rw=1.28*(2*%pi*9*Q)/(16*N);
rbt=0.64*(2*%pi*2*Q)/(3*N);
//Display the result in command window
disp(rb,"Resolution of Bartlett Method");
disp(rw,"Resolution of Welch(50% overlap) Method");
disp(rbt,"Resolution of Blackmann-Tukey Method");