//Caption :bits per sample
//Example 4.3.i
//page no 168
//find bits per sample
clc;
clear;
//Given data
fmax=4*10^3;
xmax=3.8;
snr=100;
P=30*10^-3;
v=(log10(((snr*xmax^2)/(3*P)))/(2*log10(2)));
disp(ceil(v),"Number of bits required per sample are");
disp("bits");

