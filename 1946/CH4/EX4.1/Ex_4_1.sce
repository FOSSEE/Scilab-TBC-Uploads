// Example 4.1:Loss
clc;
clear;
close;
L=0.4;// Length of fiber in km
Pi=1;// Assume input power
Po=0.25//Optical Signal Loss
Loss= round((10/L)*(log10(Pi/Po)));//Loss in dB/Km
disp(Loss,"Loss in dB/Km")
