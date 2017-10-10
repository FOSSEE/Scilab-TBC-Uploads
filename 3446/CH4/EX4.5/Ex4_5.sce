// Exa 4.5
// To determine choice of modulation scheme if no-error correction coding is used.

clc;
clear all;

S_No=53; //dB-Hz
R=9.6*10^3; //bps
BW=4.8*10^3; //Khz
Pb=10^-5; //BER<=10^-5;

//solution
disp("Since the required data rate of 9.6 kbps is more than the available bandwidth of 4.8 kHz, the channel is bandwidth-limited.");
Eb_No=S_No-10*log10(R); //dB
// Try for 8-PSK modulation scheme
M=8;
Ps=log2(M)*Pb; //Max ps
Es_No=log2(M)*10^(0.1*Eb_No);
//Ps(8)=2*Q(sqrt(2*Es_No)*sin(%pi/8));
//2*Q(sqrt(2*Eb_No))=erfc(sqrt(Eb_No));  //Refer EQn C(7) from appendix C

Ps8=erfc(sqrt(Es_No)*sin(%pi/8));
disp("");
printf(' Symbol error rate is given as %.5f \n ',Ps);
printf('The ratio of signal energy to noise is %.2f \n ',Es_No);
printf('Symbol error rate for 8-PSK  is %.5f \n ',Ps8);
disp("As symbol error rate for 8-PSK modulation is lower than threshold value. so, We can use 8-PSK modulation.")
