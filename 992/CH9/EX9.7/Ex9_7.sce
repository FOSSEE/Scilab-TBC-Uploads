
//Exa:9.7
clc;
clear;
close;
//Given:
c=3500;
b=60000;
l=b/2/c;
M=2^l;
Vrms=0.2;//in volts
s=4/M;
SQNR=20*[log10(Vrms/s)]+10*log10(12);
printf("\nThe signal to quantisation ratio is(SQNR)=%fdB",SQNR);