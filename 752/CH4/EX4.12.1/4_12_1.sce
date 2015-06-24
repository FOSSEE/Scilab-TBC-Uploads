clc;
// page no 136
// prob no 4_12_1
//As shown in fig 4.12.1
//Three identical links are given with for 1 link is SNR=60 dB
SNR1=60;
l=3;
//Determination of output signal to noise ratio
SNR=(SNR1)-10*log10(l);
disp('dB',SNR,'The value of output signal to noise ratio is ');