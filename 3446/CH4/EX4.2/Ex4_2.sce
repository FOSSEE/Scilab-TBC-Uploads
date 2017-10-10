// Exa 4.2
// To calculate SNR for L=32, 64, 128, and 256.

clc;
clear all;

Rt=1; //Resistance(ohm)
//L= Number of quantization values
L1=32;
L2=64;
L3=128;
L4=256;

// solution
// L=2^R i.e R=log2(L);
R1=log2(L1);
R2=log2(L2);
R3=log2(L3);
R4=log2(L4);

//P=A^2/2; //average power of signal
//sig^2=0.333*A^2*2^(-2*Rt); //Avg quantization noise power
//SNR=P/sig^2;
// SNR(dB)=1.8+ 6R;

SNR1=1.8+6*R1;
SNR2=1.8+6*R2;
SNR3=1.8+6*R3;
SNR4=1.8+6*R4;

printf('For L=32, SNR is %.1f dB\n ',SNR1);
printf('For L=64, SNR is %.1f dB\n ',SNR2);
printf('For L=128, SNR is %.1f dB\n ',SNR3);
printf('For L=256, SNR is %.1f dB\n ',SNR4);
