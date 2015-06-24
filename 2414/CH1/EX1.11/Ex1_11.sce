clc;
//page 17
//ex-1.11

P=5;   //In mW
N=100*10^-6;  //in mW
S2N=P/N;
disp(S2N,'(a)    Absolute signal to noise ratio :');
S2NdB=10*log10(S2N);
disp('dB',S2NdB,'(b)   dB signal to noise ratio is:')
PdBm=10*log10(P/1);
disp('dBm',PdBm,'(c)    Signal Power is');
NdBm=10*log10(N/1);
disp('dBm',NdBm,'Noise power is');
S2NdB=PdBm-NdBm;
disp('dB',S2NdB,'Decinel S/N ratio is');
