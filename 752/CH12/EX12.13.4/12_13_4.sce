clc;
//page no 457
//problem no 12.13.4
//Tx link 
SN_dB=8;
SNR=10^(SN_dB/10);
//a)Determination of bit error rate
PbeU=0.5*(1-erf(sqrt(SNR)));
BER_U=PbeU;
disp(BER_U,'a)The bit-error rate is');
//b)new bit error rate
n=15;k=11;t=1;r=k/n;
SNR_n=r*SNR;
PbeC=0.5*(1-erf(sqrt(SNR_n)));
BER_C=((factorial(n-1))*PbeC^(t+1))/((factorial(t))*(factorial(n-t-1)));
disp(BER_C,'The new bit error rate is');