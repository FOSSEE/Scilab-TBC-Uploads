clc;
// page no 444
// prob no 13_2
//Voice transmisssion occupies 30 kHz.Spread spectrum is used to increase BW to 10MHz
B1=30*10^3;//BW is 30 kHz
B2=10*10^6;//BW is 10 MHz
T=300;//noise temp at i/p
PN=-110;//signal has total signal power of -110 dBm at receiver
k=1.38*10^-23;//Boltzmann's const in J/K
//Determination of noise power at B1=30kHz
PN1=10*(log10(k*B1*T/10^-3));
disp('dBm',PN1,'The noise power at BW=30 kHz is');
//Determination of noise power at B2=10MHz
PN2=10*(log10(k*B2*T/10^-3));
disp('dBm',PN2,'The noise power at BW=10 MHz is');
//Determination of SNR for 30kHz BW
SNR1=PN-PN1;
disp('dB',SNR1,'The value of SNR for BW=30 kHz is');
//Determination of SNR for 10MHz BW
SNR2=PN-PN2;
disp('dB',SNR2,'The value of SNR for BW=10 MHz is');