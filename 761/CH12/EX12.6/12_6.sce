clc;
// page no 415
// prob no 12_6
B=3*10^3;SNR_dB=30;
SNR_power=10^(30/10);
C=B*log2(1+SNR_power);
disp('b/s',C,'Shannon limit');