//Chapter 8
//Example 8-3
//ProbOnVoltageGain 
//Page 223
clear;clc;
R = 25*10^3 ;
aR = 50 ;
a = aR / R ;
Gain = 1 + (2/a) ;
printf ( "\n\n Voltage Gain = %.4f " , Gain )