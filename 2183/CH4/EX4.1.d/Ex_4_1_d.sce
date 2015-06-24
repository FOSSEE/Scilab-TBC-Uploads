// Example 4.1.d:Ratio of powers
clc;
clear;
close;
L=8;// Length of fiber in km
Pi=120*10^-6;// input power in Watt
Po=4*10^-6;//Output power in Watt
alpha= round(10*(log10(Pi/Po)));//Loss in dB
alphadb= alpha/L;//Loss in dB/Km
alphadb2=alphadb*10;// Loss along 10Km fiber length in dB
Ds=alphadb2+9;// Due to splices at 1km Interval
rt= 10^(Ds/10);// Ratio of input to output power
disp(rt,"Ratio of input to output power")
//answer is wrong in the textbook

