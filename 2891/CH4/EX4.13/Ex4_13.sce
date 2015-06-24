//Exa 4.13
clc;
clear;
close;
// given :
Wt=15 // radaited power in watt
f=60 // in MHz
f=60*10^6 // in Hz
d=10 // in m
c=3*10^8 // in m/s
lambda=c/f // in meter
Gt=1.64 // transmitting gain in dB
Gr=1.64 // receiving gain in dB
Wr=(Wt*Gt*Gr*(lambda)^2/(4*(%pi)*d)^2) // receiving power in watt
disp(Wr*1000,"receiving power in mW:")
