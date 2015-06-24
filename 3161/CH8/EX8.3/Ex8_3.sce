clc;
//page 446
//problem 8.3

//Given bandwidth of signal is fM = 4kHZ
fM = 4*10^3;
//Given power spectral density of white noise n = 2*10^-9 W/Hz
n = 2*10^-9;
//Also given that minimum output SNR is 40dB
//Signal undergoes a loss of 30dB

//For SSB:
// Required minimum output SNR = Si_min_SSB / (n*fM) = 40 dB = 10^4
Si_min_SSB = (10^4)*n*fM;
// Required minimum signal strength at transmitter output Si_tran = Si_min * 30 dB
Si_tran_SSB = Si_min_SSB * 10^3;
disp('Required minimum SSB signal strength at transmitter output is'+string(Si_tran_SSB)+' W');

//For DSB-SC:
// Required minimum output SNR = (Si_min_DSB/3) / (n*fM) = 40 dB = 10^4
Si_min_DSB = 3*(10^4)*n*fM;
// Required minimum signal strength at transmitter output Si_tran = Si_min * 30 dB
Si_tran_DSB = Si_min_DSB * 10^3;
disp('Required minimum DSB signal strength at transmitter output is'+string(Si_tran_DSB)+' W');
