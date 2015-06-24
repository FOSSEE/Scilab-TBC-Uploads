//Scilab Code for Example 4.2 of Signals and systems by
//P.Ramakrishna Rao
//Continuous Time Fourier Transform of a
//Continuous Time Signal x(t)= exp(-A*t)u(t), t>0
clear;
clc;
close;
// Analog Signal
A =1;    //Amplitude
T=1;
Dt = 0.005;
t = 0:Dt:10;
xt = A*exp(-t/T);
// Continuous-time Fourier Transform
Wmax = 2*%pi*1;        //Analog Frequency = 1Hz
K = 4;
k = 0:(K/1000):K;
W = k*Wmax/K;
XW = xt* exp(-sqrt(-1)*t'*W) * Dt;
XW_Mag = abs(XW);
W = [-mtlb_fliplr(W), W(2:1001)]; // Omega from -Wmax to Wmax
XW_Mag = [mtlb_fliplr(XW_Mag), XW_Mag(2:1001)];
[XW_Phase,db] = phasemag(XW);
XW_Phase = [-mtlb_fliplr(XW_Phase),XW_Phase(2:1001)];
//Plotting Continuous Time Signal
a = gca();
a.y_location = "origin";
plot(t,xt);
xlabel('t in sec.');
ylabel('x(t)')
title('Continuous Time Signal')
figure
//Plotting Magnitude Response of CTS
subplot(2,1,1);
a = gca();
a.y_location = "origin";
plot(W,XW_Mag);
xlabel('Frequency in Radians/Seconds---> W');
ylabel('abs(X(jW))')
title('Magnitude Response (CTFT)')
//Plotting Phase Reponse of CTS
subplot(2,1,2);
a = gca();
a.y_location = "origin";
a.x_location = "origin";
plot(W,XW_Phase*%pi/180);
xlabel('                         Frequency in Radians/Seconds---> W');
ylabel('                                                <X(jW)')
title('Phase Response(CTFT) in Radians')
