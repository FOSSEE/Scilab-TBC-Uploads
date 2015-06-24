//Caption: probability bit error
//Example 8.5
//page no 378
//Find bit error probability 
clc;
clear;
A=10*10^-3;
T=10^-6;
N0=10^-11;// power sepctral density

Eb=(A^2*T)/2//Eb=bit energy

z=sqrt(Eb/N0);//Probability of ASK
Pe=erfc(z)'//bit error probability
disp("bit error probability ")
disp(Pe,"Pe =")
