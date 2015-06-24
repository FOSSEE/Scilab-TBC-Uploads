//Graphical//
//Example 4.1.2 Continuous Time Fourier Transform
//and Energy Density Function of a Square Waveform
// x(t)= A, from -T/2 to T/2
clear;
clc;
close;
// Analog Signal
A =1;    //Amplitude
Dt = 0.005;
T = 4;  //Time in seconds
t = -T/2:Dt:T/2;
for i = 1:length(t)
  xa(i) = A;
end
//
// Continuous-time Fourier Transform
Wmax = 2*%pi*2;        //Analog Frequency = 2Hz
K = 4; k = 0:(K/800):K;
W = k*Wmax/K;
disp(size(xa))
Xa=xa'*exp(-sqrt(-1)*t'*W)*Dt;
Xa = real(Xa);
W = [-mtlb_fliplr(W), W(2:501)]; // Omega from -Wmax to Wmax
Xa = [mtlb_fliplr(Xa), Xa(2:501)];
ESD = Xa^2;  //Energy Density Spectrum
subplot(3,1,1);
plot(t,xa);
xlabel('t in msec.');
ylabel('xa(t)')
title('Analog Signal')
subplot(3,1,2);
plot(W/(2*%pi),Xa);
xlabel('Frequency in Hz');
ylabel('Xa(jW)')
title('Continuous-time Fourier Transform')
subplot(3,1,3);
plot(W/(2*%pi),ESD);
xlabel('Frequency in Hz');
ylabel('SXX')
title('Energy Density Spectrum')
