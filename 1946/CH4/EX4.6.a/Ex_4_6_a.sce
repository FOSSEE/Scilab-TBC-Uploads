// Example 4.6.a:Loss
clc;
clear;
close;
L=8;// Length of fiber in km
Pi=120*10^-6;// input power in watt
Po=3*10^-6;//Output power in watt
alpha= round(10*(log10(Pi/Po)));//Loss in dB
disp(alpha,"Loss in dB")
