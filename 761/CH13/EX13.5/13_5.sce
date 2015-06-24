clc;
// page no 447
// prob no 13_5
//signal with bandwidth Bbb=200 kHz & SNR=20 dB spred at chip rate 50:1
Bbb=200*10^3;//Bandwidth
Gp=50;//chip rate
SNR_in=20;//SNR is 20 dB without spreading
//Determination of BW after spreading
Brf=Gp*Bbb;
disp('MHz',Brf,'The value of BW after spreading');
//Converting into dB 
Gp_dB=10*log10(Gp);
disp('dB',Gp_dB,'The value of processing gain');
//Determination of SNR after spreadng
SNR_out=SNR_in-Gp_dB;
disp('dB',SNR_out,'The value of SNR after spreading in dB');