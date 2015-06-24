clc;
//page 413
//problem 7.4

//Given signal strength S = 0.001 W
S = 0.001;

//Gaussian Noise Magnitude n 
n = 10^(-8);

//Frequency of signal f = 4000 Hz
F = 4000;

//Noise at equalizer output N
N = integrate('n*(1+(f^2)/F^2)','f',-F,F);

//Signal to Noise Ratio value is SNR
SNR = S/N;

disp('SNR value is '+string(10*log10(SNR))+' dB');

