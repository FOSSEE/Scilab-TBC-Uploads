clc;
// page no 139
// prob no 4_13_1
//Noise fig. of an amplifier is 7 dB with input SNR=35 dB
SNRin=35;//SNR at i/p of amplifier
F=7;//Noise figure of an amplifier
//Determination of output SNR
SNRout=SNRin-F;
disp('dB',SNRout,'The value of output signal to noise ratio is ');