//clear//
//Figure 4.22
//Plotting Continuous Time Fourier Transform of
//Impulse Response h(t)= exp(-A*t)u(t), t>0
clear;
clc;
close;
// Analog Signal
A =1;    //Amplitude
Dt = 0.005;
t = 0:Dt:10;
ht = exp(-A*t);
// Continuous-time Fourier Transform
Wmax = 2*%pi*1;        //Analog Frequency = 1Hz
K = 4;
k = 0:(K/1000):K;
W = k*Wmax/K;
HW = ht* exp(-sqrt(-1)*t'*W) * Dt;
HW_Mag = abs(HW);
W = [-mtlb_fliplr(W), W(2:1001)]; // Omega from -Wmax to Wmax
HW_Mag = [mtlb_fliplr(HW_Mag), HW_Mag(2:1001)];
//Plotting Continuous Time Signal
figure
a = gca();
a.y_location = "origin";
plot(t,ht);
xlabel('t in sec.');
title('Impulse Response h(t)')
figure
//Plotting Magnitude Response of CTS
a = gca();
a.y_location = "origin";
plot(W,HW_Mag);
xlabel('Frequency in Radians/Seconds---> W');
title('Frequency Response H(jW)')
