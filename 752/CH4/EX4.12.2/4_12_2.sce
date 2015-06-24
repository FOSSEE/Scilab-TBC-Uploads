clc;
// page no 137
// prob no 4_12_2
//SNR for three links is given in which Ist two have SNR 60 db & IInd 40 dB
SNRdB(1)=60;//SNR is 60 dB for Ist link
SNRdB(2)=60;//SNR is 60 dB for IInd link
SNRdB(3)=40;//SNR is 40 dB for IIIrd link
//Determination of power in watt
for i=1:3
snr(i)=10^(-SNRdB(i)/10);
end;
//Determination of overall SNR
for i=1:3
SNR=snr(i);
end;
//Determination of total SNR in dB 
SNRdB=10*(-log10(SNR));
disp('dB',SNRdB,'The value of output signal to noise ratio is ');