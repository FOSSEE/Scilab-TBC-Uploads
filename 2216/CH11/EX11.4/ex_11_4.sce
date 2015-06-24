//Example 11.4: ARRAYED GUIDE
clc;
clear;
close;
//given data :
c=3*10^8;
lamda_c=1.55*10^-6;// in m
vc=c/lamda_c;
n=16;// number of channel
f=100*10^9;// in Hz
delV_FSR=n*f;
m=round(vc/delV_FSR);
disp(m,"required order of the arrayed waveguide, = ")
