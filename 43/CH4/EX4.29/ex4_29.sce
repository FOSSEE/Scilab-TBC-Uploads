//Ex 4.29
clc;
fm=500;
fs=2*fm;
T=1/fs;
df=10;
N=2*fm/df;
rl=N*T;
disp(rl,'Record Length');
sl=0.05;
zp=rl-sl;
disp(zp,'Zero padding required');
