//Caption: probability of symbol error
//Example 8.11
//page no 383
//Find probability of symbol error 
//assuming coherent detection
clc;
clear;
rb=2.5*10^6//binary data rate
N0=2*10^-20;//power spectral density of noise FSK system
A=1*10^-6;//amplitude of received signal
T=1/rb;
Eb=(A^2*T)/2;// Eb=bit energy
z=sqrt(Eb/(2*N0))
Pe=1/2*erfc(z);//probability of symbol error
disp(Pe,"probability of symbol error");//
