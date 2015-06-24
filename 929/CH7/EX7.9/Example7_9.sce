//Example 7.9

clear;

clc;

R1=100*10^3;//From Example 7.7(a)

R2=200*10^3;//From Example 7.7(a)

Aso=-(R2/R1);

Eno=154*10^(-6);//From Example 7.9

Eni=Eno/abs(Aso);

Vipa=0.5;//Peak amplitude of input ac signal

Virms=Vipa/sqrt(2);

SNR=20*log10(Virms/Eni);

printf("SNR of the circuit of Example 7.7=%.1f dB",SNR);