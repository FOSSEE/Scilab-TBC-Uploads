//Caption: amplitude
//Example 8.7
//page no 379
//Find carrier amplitude
clc;
clear;
Pe=10^-4;//probability of error of PSK
N0=2*10^-10;
//from table error function 
//Pe=erffc(z)
z=2.6
r=10^6;
T=1/r;
 //z=sqrt(Eb/N0)
Eb=N0*z^2;      // Eb=bit energy
A=sqrt((Eb*2)/T); //Eb=A^2*T/2
disp("mV",A*1000,"Carrier Amplitude");
