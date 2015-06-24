// Example 4.6.b:Loss in dB/Km
clc;
clear;
close;
L=8;// Length of fiber in km
Pi=120*10^-6;// input power in watt
Po=3*10^-6;//Output power in watt
alpha= round(10*(log10(Pi/Po)));//Loss in dB
alphadb= alpha/L;//Loss in dB/Km
disp(alphadb,"Loss in dB/Km")

