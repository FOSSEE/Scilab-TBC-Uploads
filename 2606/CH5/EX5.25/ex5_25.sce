//Page Number: 5.37
//Example 5.25
clc;
//Given,
fs=32D+3; //Hz
fm=1000; //Hz
fM=4D+3; //Hz
//As SNR=(3*(fs^3))/(8*pi*pi*(fm^2)*fM)
SNR=(3*(fs^3))/(8*%pi*%pi*(fm^2)*fM);
SNRdb=(log10(SNR));
disp('dB',SNRdb,'Output SNR');
