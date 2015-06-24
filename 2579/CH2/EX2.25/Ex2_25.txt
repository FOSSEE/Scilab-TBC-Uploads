//Ex:2.25
clc;
clear;
close;
V2=50;// in u volt
G=5;// voltage gain in dB
G1=10^(G/20);// voltage gain
V1=V2*G1;// signal at receiving station in volt
printf("The signal at receiving station = %f u-volts", V1);