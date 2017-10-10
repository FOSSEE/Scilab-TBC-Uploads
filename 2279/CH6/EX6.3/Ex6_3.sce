//Sampling the CT signals
clc
clear
close
t=-0.3:0.0001:0.3;
x=5*sin(10*%pi*t);
figure(1)
plot(t,x);
xtitle("CT Signal x(t)","t","x(t)");
//Given Sampling frequency (a) Fs=15Hz (b) Fs=6Hz
Fs1=15;
Fs2=6;
n=-10:1:10;
Ts1=1/Fs1;//Sampling interval Ts=1/Fs
Ts2=1/Fs2;
x1=5*sin(%pi*10*n*Ts1);
x2=5*sin(%pi*10*n*Ts2);
figure(2)
subplot(2,1,1)
plot2d3('gnn',n,x1);
xtitle("Sampled signal Fs=15Hz","n","x1[n]")
subplot(2,1,2)
plot2d3('gnn',n,x2);
xtitle("Sampled signal Fs=6Hz","n","x2[n]")
