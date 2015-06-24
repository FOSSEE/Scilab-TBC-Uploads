//EXAMPLE 4.8
//Determine the order of Analog Elliptic LP filter.
clc;
clear;
ap = 1 //dB
as = 40 //dB
Fp = 1000 //Hz
Fs = 5000 //Hz
wp = Fp*2*%pi;
ws = Fs*2*%pi;


k1 = 1/(sqrt((10^(0.1* as)-1)/(10^(0.1*ap)-1)));
disp(1/k1,'1/k1 = ');
k  = wp/ws;
k2 = sqrt(1 - (k*k)); 
disp(k2,"k2 = ");
po = (1 - sqrt(k2))/(2*(1 + sqrt(k2)));
disp(po,'po = ');
p  = po +2*po^5 + 15*po^9 + 150*po^13;
disp(p,'p = ');
N = (2*log10(4/k1))/log10(1/p);
disp(N,'N = ');
disp('Since order of the filter is always an integer, ');
disp(ceil(N),'Order of the filter is, N = ');


