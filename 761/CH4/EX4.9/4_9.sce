clc;
//page no 157
//prob no. 4.9
//An FM signal has freq deviation of 5kHz modulating freq fm=1kHz with SNR at i/p is 20 dB
//Converting dB in voltage ratio
fm=1*10^3;dev_s=5*10^3;snr=20;
Es_En=10^(snr/20);
//Since Es>>En then 
phi=1/(Es_En);
m_fn=phi;//modulation index equal to phi_n
dev_n=(m_fn)*fm;//Equivalent freq deviation due to noise
//SNR as a voltage ratio is given as
SNR=(dev_s)/(dev_n);
//Converting this voltage ration in dB
SNR_dB=20*(log10(SNR));
disp('dB',SNR_dB,'The SNR at detecttor o/p is');