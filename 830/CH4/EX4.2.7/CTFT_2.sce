//Graphical//
//Example 4.2.7 Sampling a Nonbandlimited Signal
//Plotting Continuous Time Fourier Transform of
//Continuous Time Signal x(t)= exp(-A*abs(t))
clear;
clc;
close;
// Analog Signal
A =1;    //Amplitude
Dt = 0.005;
t = -2:Dt:2;
xa = exp(-A*abs(t));
//
// Continuous-time Fourier Transform
Wmax = 2*%pi*2;        //Analog Frequency = 2Hz
K = 4;
k = 0:(K/500):K;
W = k*Wmax/K;
Xa = xa * exp(-sqrt(-1)*t'*W) * Dt;
Xa = real(Xa);
W = [-mtlb_fliplr(W), W(2:501)]; // Omega from -Wmax to Wmax
Xa = [mtlb_fliplr(Xa), Xa(2:501)];
subplot(2,1,1);
a =gca();
a.x_location = "origin";
a.y_location = "origin";
plot(t,xa);
xlabel('t in msec.');
ylabel('xa(t)')
title('Analog Signal')
subplot(2,1,2);
a =gca();
a.x_location = "origin";
a.y_location = "origin";
plot(W/(2*%pi),Xa);
xlabel('Frequency in Hz');
ylabel('Xa(jW)*1000')
title('Continuous-time Fourier Transform')
