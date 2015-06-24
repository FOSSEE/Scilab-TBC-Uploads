clc;
//page no 454
//problem no 12.13.3
SN_dB=9;
SNR=10^(SN_dB/10);
PbeU=1/2 * (1-erf(sqrt(SNR)));
BERu=PbeU;
disp(BERu,'a)The bit error probability');
n=10;k=n-1;
r=k/n;
SNR1=r*SNR;
PbeC=1/2 * (1-erf(sqrt(SNR1)));
BERc=(n-1)*PbeC^2;
disp(BERc,'b)The bit error probability');