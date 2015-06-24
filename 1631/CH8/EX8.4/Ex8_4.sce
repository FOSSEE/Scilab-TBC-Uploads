//Caption: probability of error
//Example 8.4
//page no 377
//Find probability of error
clc;
clear;
A=1*10^-3;
Tb=0.2*10^-3;
fb=1/Tb;
fc=5*fb;
N0=2*10^-11;// power sepctral density

Eb=(A^2*Tb)/2;//Eb=bit energy


z=sqrt(Eb/N0);
Pe=erfc(z)'//bit error probability
disp("Error probability of PSK is ")
disp(Pe,"P(e) =");
