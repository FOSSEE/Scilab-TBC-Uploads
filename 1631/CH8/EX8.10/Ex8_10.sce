//Caption: probability of error
//Example 8.10
//page no 382
//Find probability of error of FSK
clc;
clear;
rb=300;//bit rate
T=1/rb;
A2N0=8000;
//Pe=1/2*exp(-Eb/2N0);
//Eb=A^2*T/2
Pe=1/2*exp(-((A2N0*T)/4));//Probability of error non coherent FSK
disp(Pe,"Probability of error is ");
