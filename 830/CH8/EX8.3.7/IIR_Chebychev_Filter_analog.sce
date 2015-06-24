//Graphical//
//Example 8.3.7
//To Design an Analog Chebyshev Filter
//For the given cutoff frequency = 500 Hz
clear;
clc;
close;
omegap = 1000*%pi; //Analog Passband Edge frequency in radians/sec
omegas = 2000*%pi; //Analog Stop band edge frequency in radians/sec
delta1_in_dB = -1;
delta2_in_dB = -40;
delta1 = 10^(delta1_in_dB/20);
delta2 = 10^(delta2_in_dB/20);
delta = sqrt(((1/delta2)^2)-1)
epsilon  = sqrt(((1/delta1)^2)-1)
//Calculation of Filter order
num = ((sqrt(1-delta2^2))+(sqrt(1-((delta2^2)*(1+epsilon^2)))))/(epsilon*delta2)
den = (omegas/omegap)+sqrt((omegas/omegap)^2-1)
N = log10(num)/log10(den)
//N = (acosh(delta/epsilon))/(acosh(omegas/omegap))
N = floor(N)
//Cutoff frequency
omegac = omegap
//Calculation of poles and zeros
[pols,Gn] = zpch1(N,epsilon,omegap)
disp(N,'Filter order N =');
disp(pols,'Poles of a type I lowpass Chebyshev filter are Sk =')
//Analog Filter Transfer Function
h = poly(Gn,'s','coeff')/real(poly(pols,'s'))
//Magnitude Response of Chebyshev filter
[h2]=cheb1mag(N,omegac,epsilon,1:1000)
//Magnitude in dB
mag=20*log10(h2);
plot2d((1:1000),mag,[0,-180,1000,20]);
a=gca();
a.thickness = 3;
a.foreground = 1;
a.font_style = 9; 
xgrid(5)
xtitle('Magnitude Response of Chebyshev Type 1 LPF Filter Cutoff frequency = 500 Hz','Analog frequency in Hz--->','Magnitude in dB -->');
