//Example 10.01
// Order estimation using Bellanger's formula
clear;
clc;
Fp=1800;//Passband edge freq. in Hz
Fs=2000;//stopband edge freq. in Hz
ap=0.1;//peak passband ripple in dB
as=35;//min. stopband attenuation in dB
FT=12000;//Sampling freq. in Hz

//calculation of peak ripple values
dp=1-10^-(ap/20);
disp(dp,'dp = ');
ds=10^-(as/20);
disp(ds,'ds = ');

//Order of the FIR filter
N=((-2*log10(10*ds*dp)) /((3)*(Fs-Fp)/FT)) -1 ;
disp(ceil(N),'Order of the filter is N = ')
