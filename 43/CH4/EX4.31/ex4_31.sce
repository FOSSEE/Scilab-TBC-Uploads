//Ex 4.31
clc;
fm=10*10^3;
df=100;
N=2*fm/df;
l=log2(N);
l1=ceil(l);
N1=2^l1;
fs=N1*df;
disp(fs,'Required Sampling Freq');