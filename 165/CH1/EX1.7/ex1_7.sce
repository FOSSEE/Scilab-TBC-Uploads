//Example 1.7
clc;
Fs=600;                //Full Scale
e=0.02;                //error permissable +-2%
V=250;                 //Voltage measured
lim_err=Fs*e;          //magnitude of limiting error
//limiting error at a given voltage drop V
lim_err_V=100*lim_err/V;
printf('\nLimiting error at 250 V = %.2f percent\n',lim_err_V)