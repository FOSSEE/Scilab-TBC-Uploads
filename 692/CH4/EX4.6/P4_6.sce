//EXAMPLE 4.6
//Order of LP filter
clc;
clear;
ap = 1 //Peak passband ripple in dB
as = 40 //min. stopband atteuation in dB
wp = 1000 //Hz
ws = 5000 //Hz
k  = wp/ws;
disp(1/k,'1/k = ');
k1 = 1/(sqrt((10^(0.1* as)-1)/(10^(0.1*ap)-1)));
disp(1/k1,'1/k1 = ');
N=ceil(log10(sqrt((10^(0.1* as)-1)/(10^(0.1*ap)-1)))/log10(1/k));
disp(N,'order of the filter is :');





