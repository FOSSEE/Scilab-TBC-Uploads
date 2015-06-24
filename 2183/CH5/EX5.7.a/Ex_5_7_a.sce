// Example 5.7.a;//rms value of power fluctuation
clc;
close;
clear;
op=10^-15;//outputin dB Hz^-1
bw=100;//in MHz
h=1.55;//in micro meter
ef=0.6;//quantum efficiency
pi=2;//in mW
rrmf=op*bw*10^6;//
rmf=sqrt(rrmf);//
disp(rmf,"rms value of power fluctuation is")
