// Exa 4.6
// To determine design choice of modulation scheme without an error correction coding.

clc;
clear all;

SNR=48; //dB-Hz
BW=45*10^3; //in Hz
R=9.6*10^3; //bps
Pb=10^-5; //Bit error rate
e=2.71828; //Natural exponent e

//solution
disp(" since the available bandwidth of 45 kHz is more than adequate to support the required data rate of 9.6 kbps.");
disp("So, the channel is not bandwidth limited ");
Eb_No=SNR-10*log10(R);
//We try the 16-FSK modulation scheme
M=16;

Es_No=log2(M)*Eb_No;
Ps=(M-1)/2*e^(-Es_No/2);
//For orthogonal signalling
Ps16=(2^M-1)/(2^(M-1))*Pb;
disp("");
printf(' The maximum symbol error probability is %0.5f \n ',Ps16);
printf('The symbol error probability achieved by 16-PSK is %.9f \n ',Ps);
disp("As achieved symbol error probability is far less than maximum tolerable value");
disp("So, we can meet the given speciﬁcations for this power-limited channel with a 16-FSK modulation scheme without any error-correction coding")
