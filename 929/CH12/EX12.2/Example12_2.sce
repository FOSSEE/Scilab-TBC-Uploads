//Example 12.2

clear;

clc;

n=10;

Vfsr=10.24;

StoNDsumdB=56;

Eq=Vfsr/((2^n)*sqrt(12));

SNRdB=(6.02*n)+1.76;

ENOB=(StoNDsumdB-1.76)/6.02;

printf("Eq=%.2f mV",Eq*10^3);

printf("\nSNR(max)=%.2f dB",SNRdB);

printf("\nENOB=%.2f",ENOB);