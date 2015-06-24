clear;
clc;
disp("--------------Example 3.31---------------")
p_signal=10*10^-3; // 10 mW
p_noise=10^-6; // 1 microW
SNR = p_signal/p_noise; // SNR = signal power/noise power
SNRdB=10*log10(SNR); // formula to calculate SNR in dB
printf("SNR = %d \n\nSNRdB = %d ",SNR,SNRdB); // display result
