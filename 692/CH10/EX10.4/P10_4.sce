//Example 10.04
//Kaiser's formula for bandpass filter 
clear;
clc;
Fp1=300;//Passband edge freq. in Hz
Fs1=350;//stopband edge freq. in Hz
Fp2=1000;//Passband edge freq. in Hz
Fs2=1100;//stopband edge freq. in Hz

dp=0.004;//passband ripple in dB
ds=0.01;//stopband ripple in dB
FT=10000;//Sampling freq. in Hz

//Since (Fp1-Fs1)<(Fs2-Fp2),bandwith used is (Fp1-Fs1)

//Order of the FIR filter
N=(-(20*log10(sqrt(ds*dp))) - 13)/((14.6)*(Fs1-Fp1)/FT);
disp(ceil(N),'Order of the filter is N = ')
