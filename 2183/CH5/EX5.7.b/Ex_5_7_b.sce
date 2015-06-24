// Example 5.7.b;//rms noise current
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
e=1.6*10^-19;//
hc=6.63*10^-34;//
c=3*10^8;//in m/s
x=((e*ef*h*10^-6*pi*10^-3*10^4*3.16*10^-8)/(hc*c));//
disp(x,"rms noise current in A is")
