clc;
// page no 407
// prob no 12_1
//A radio channel with BW=10KHz and SNR=15 dB
B=10*10^3;
snr=15;
//converting dB in power ratio
SNR=10^(snr/10);
//a)Determination of theoretical max data rate
C1=B*log2(1+SNR);
disp('kb/s',C1/1000,'a)The theoretical max data rate is');
//b)Determination of data rate with 4 states i.e M=4
M=4;
C2=2*B*log2(M);
disp('kb/s',C2/1000,'b)The data rate for 4 states is');