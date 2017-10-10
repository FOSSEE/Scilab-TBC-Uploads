//Example 1.8(a)
clc;
Fs=500*10^-3;          //Full Scale
e=0.02;                //error permissable +-2%
I=300*10^-3;           //Current measured
lim_err=Fs*e;          //magnitude of limiting error
//limiting error at a given current I
lim_err_I=100*lim_err/I;
printf('\nLimiting error at 300 mA = %.2f percent\n',lim_err_I)