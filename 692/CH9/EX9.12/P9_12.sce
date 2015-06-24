//EXAMPLE 9.12
//Minimum order of type-2 Chebyshev highpass digital filter
clc;
clear;
ap = 1 //dB
as = 40 //dB
Fp = 1000 //Hz
Fs = 600 //Hz
Wp = Fp*2*%pi;
Ws = Fs*2*%pi;

F = 4000//Hz
T=1/F;

Ap=(2/T)*(tan(Wp*T/2))
As=(2/T)*(tan(Ws*T/2))


k  = Ap/As;
disp(1/k,'1/k = ');
k1 = 1/(sqrt(((10^(0.1* as))-1)/((10^(0.1*ap))-1)));
disp(1/k1,'1/k1 = ');
N = acosh(1/k1)/acosh(k);//order of the filter
disp(N,'N = ');
disp('Since order of the filter is always an integer, ');
disp(ceil(N),'Order of the filter is, N = ');




