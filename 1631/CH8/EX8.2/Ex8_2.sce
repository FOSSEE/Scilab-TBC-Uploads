//Caption: peak Amplitude
//Example 8.2
//page no 374
//Find peak Transmission pulseAmplitude
clc;
clear;
NO=1.338*10^-5;
Pe=2.055*10^-5;
T=100*10^-6;
//Pe=erfc(sqrt(Eb/(2*N0)));
Eb=(2*2.9^2*NO);
A=sqrt((Eb*2)/T);
disp("Volts",A,"Transmission pulse Amplitude");
