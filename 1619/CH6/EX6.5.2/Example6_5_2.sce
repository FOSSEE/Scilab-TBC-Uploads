//Example 6.5.2 page 6.12

clc;
clear;

Ps_out= 30;         //in uW...
Ps_in=1;
Noise_power = 0.5;

G= Ps_out/Ps_in;

G= 10*log10(G);
printf("\nThe Gain EDFA is %.2f dB",G);
