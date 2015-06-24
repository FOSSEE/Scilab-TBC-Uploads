//Sampling the CT signals
clc
clear
close
t=-10:0.01:10;
x=sin(%pi*t);
figure(1)
subplot(2,1,1)
plot(t,x);
xtitle("CT Signal sin(pi*t)","t","x(t)");
Wb=%pi;//Given Sampling frequency is Pi radians
Ws=2*Wb;
Fs=Ws/(2*%pi);
n=-100:1:100;
Ts=1/Fs;//Sampling interval Ts=1/Fs
x_n=sin(%pi*n*Ts);
subplot(2,1,2)
plot2d(n,x_n,rect=[-100 -2 100 2]);
xtitle("Sampled signal x[n]","n","x[n]")
