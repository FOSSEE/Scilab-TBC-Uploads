//EXAMPLE 4.7
//Determine the order of Analog Chebyshev LP filter.
clc;
clear;
ap = 1 //dB
as = 40 //dB
wp = 1000 //Hz
ws = 5000 //Hz
k  = wp/ws;
disp(1/k,'1/k = ');
k1 = 1/(sqrt(((10^(0.1* as))-1)/((10^(0.1*ap))-1)));
disp(1/k1,'1/k1 = ');
N = acosh(1/k1)/acosh(1/k);
disp(N,'N = ');
disp('Since order of the filter is always an integer, ');
disp(ceil(N),'Order of the filter is, N = ');




