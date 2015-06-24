//Chapter 19, Problem 6, Fig.19.6
clc;
Av=40;                         //voltage gain
B=5000;                         //bandwidth
Ri=10000;                       //input resistance
A=10^(Av/20);                   //voltage gain in decibels
Rf=A*Ri;                        //feedback resistance
f=A*B;                          //frequency
printf("Gain = %d\n\nFeedback Resistor Rf = %d Megaohm\n\nFrequency = %d Khz",A,Rf/10^6,f/1000);
