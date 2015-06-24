//Example 7.14 // SNR
clc;
clear;
close;
r=1;//responsivity
p=0.1;//micro watt
ins=910;//nA
snr=((r^2*(p*10^3)^2)/(ins^2));//
disp(snr,"SNR is, =")
