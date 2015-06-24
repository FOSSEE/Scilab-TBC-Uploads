//Example 3.11.1// multiplier
clc;
clear;
close;
//given data :
format('v',7)
Rm=200;//in ohm
I_fsd=150*10^-6;// in A
S=1/I_fsd;
V=50;//in V
Rs=(S*V)-Rm;
disp(Rs*10^-3,"multiplier,Rs(k-ohm) = ")
