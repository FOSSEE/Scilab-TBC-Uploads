//Graphical//
//Example 4.02.7 Sampling a Nonbandlimited Signal
//Plotting Discrete Time Fourier Transform of
//Discrete Time Signal x(nT)= exp(-A*T*abs(n))
clear;
clc;
close;
// Analog Signal
A =1;    //Amplitude
Dt = 0.005;
t = -2:Dt:2;
//Continuous Time Signal
xa = exp(-A*abs(t));
//Discrete Time Signal
Fs =input('Enter the Sampling Frequency in Hertz');//Fs = 1Hz(or)20Hz
Ts = 1/Fs;
n = -5:1:5;
nTs = n*Ts;
x = exp(-A*abs(nTs));
// Analog Signal reconstruction
Dt = 0.005;
t = -2:Dt:2;
Xa = x *sinc_new(Fs*(ones(length(nTs),1)*t-nTs'*ones(1,length(t))));
// check
error = max(abs(Xa - xa))
subplot(2,1,1);
a =gca();
a.x_location = "origin";
a.y_location = "origin";
plot(t,xa);
xlabel('t in msec.');
ylabel('xa(t)')
title('Original Analog Signal')
subplot(2,1,2);
a =gca();
a.x_location = "origin";
a.y_location = "origin";
xlabel('t in msec.');
ylabel('xa(t)')
title('Reconstructed Signal from x(n) using sinc function'); 
plot(t,Xa);
