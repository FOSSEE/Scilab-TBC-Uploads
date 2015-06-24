//Example 12.6

clear;

clc;

n=12;

nreqd=16;

resbits=nreqd-n;

m=resbits/(1/2);

fS=44.1*10^3;

fovers=(2^m)*fS;

SNRmax=(6.02*(n+(0.5*m)))+1.76;

printf("Oversampling Frequency=%.2f MHz",fovers*10^(-6));

printf("\nSNRmax=%.2f dB",SNRmax);