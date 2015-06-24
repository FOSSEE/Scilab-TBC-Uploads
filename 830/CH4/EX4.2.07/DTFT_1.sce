//Graphical//
//Example 4.2.07 Sampling a Nonbandlimited Signal
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
Fs =input('Enter the Sampling Frequency in Hertz');//Fs = 2Hz(or)20Hz
Ts = 1/Fs; 
n = -5:1:5;
x = exp(-A*abs(n*Ts));
// Discrete-time Signal
//Discrete-time Fourier transform
K = 500; 
k = 0:1:K;
w = %pi*k/K;
X = x * exp(-sqrt(-1)*n'*w);
X = real(X);
w = [-mtlb_fliplr(w), w(2:K+1)]; // Omega from -w to w
X = [mtlb_fliplr(X), X(2:K+1)];
subplot(3,1,1);
plot(t,xa );
xlabel('t in msec.');
ylabel('xa(t)')
title('Analog Signal')
subplot(3,1,2);
plot2d3('gnn',n,x ) 
xlabel('Discrete Time n.');
ylabel('x(nT)')
title('Discrete Signal');
subplot(3,1,3);
plot(w/(2*%pi),X );
xlabel('Frequency in pi units');
ylabel('X(w)')
title('Discrete-time Fourier Transform')
