// Exa 5.13
clc;
clear;
close;
// given data 
fo=2;// in KHz
C=0.01;//in uF
disp("For a divide-by-2 network, tp, output pulse duration, should be slightly larger than Y i.e. period of trigger pulse.")
T=1/fo;//in mSec
tp=1.2*T;//in mSec
R=tp*10^-3/(1.1*C*10^-6);//in ohm
disp(tp,"Period of trigger pulse in mSEC is :");
disp(R/1000,"Value of R in Kohm is ; ");