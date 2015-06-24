//Example 10.03
//Order estimation using Hermann's formula
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

a1=0.005309;
a2=0.07114;
a3=-0.4761;
a4=0.00266;
a5=0.5941;
a6=0.4278;
D_infi=((a1*(log10(dp)^2) + a2*log10(dp) + a3)*log10(ds))-(a4*(log10(dp))^2 + a5*(log10(dp)) + a6); 
disp(D_infi,'D_infi = ');
b1=11.01217;
b2=0.51244;
F=b1 + b2*((log10(dp))-(log10(ds)));
disp(F,'F = ');

//Order of the FIR filter
N=(D_infi- F*((Fs-Fp)/FT)^2)/((Fs-Fp)/FT);
disp(ceil(N),'Order of the filter is N = ')
