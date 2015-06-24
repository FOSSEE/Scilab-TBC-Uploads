//Sampling the CT signals
clc
clear
close
t=-0.3:0.0001:0.3;
x1=2*cos(2*%pi*20*t);//F1=20Hz
x2=2*cos(2*%pi*80*t);//F2=80Hz
figure(1)
subplot(2,1,1)
plot(t,x1);
xtitle("CT Signal X1(t)","t","x1(t)");
subplot(2,1,2)
plot(t,x2)
xtitle("CT Signal X2(t)","t","x2(t)");
//Given Sampling frequency Fs=60Hz
Fs=60;
n=-10:1:10;
Ts=1/60;//Sampling interval Ts=1/Fs
x1_n=2*cos(2*%pi*20*n*Ts);
x2_n=2*cos(2*%pi*80*n*Ts);
figure(2)
subplot(2,1,1)
plot2d3('gnn',n,x1_n,3);
xtitle("Sampled signal x1[n]","n","x1[n]")
subplot(2,1,2)
plot2d3('gnn',n,x2_n,3);
xtitle("Sampled signal x2[n]","n","x2[n]")
