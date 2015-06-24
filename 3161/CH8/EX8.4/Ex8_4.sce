clc;
//page 447
//problem 8.4

//Given bandwidth of signal is fM = 60 kHZ
fM = 60*10^3;

//Given power spectral density of white noise n = 2*10^-6 W/Hz
n = 2*10^-6;

//Given time average of square of mssg signal P = 0.1W
P = 0.1;

//Noise power at input baseband range NM
NM = n * fM;

//Threshold occurs at carrier power Pc = 2.9 * NM
Pc_Threshold = 2.9 * NM;

//For carrier power Pc = 10W, output SNR
Pc = 10;
SNRo = Pc * P / NM ;
disp('Output SNR is '+string(SNRo)+' dB');

//Carrier power is reduced by 100 times making the new power Pc_new
Pc_new = Pc / 100;

//In the given solutions the NM value is 1.2W instead of 0.12W
//The corect answer is 0.0925926 instead of 0.000926
SNR_new = (4/3) * P * (Pc_new/NM)^2;
disp('Output SNR when carrier power is reduced is '+string(SNR_new)+' dB');


