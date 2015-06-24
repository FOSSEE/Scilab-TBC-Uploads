//signals and systems
// Inverse Continuous Time Fourier Transform
// shifted impulse function
clear;
clc;
close;
w0=1
A =1;    //Amplitude
Dw = 0.005;
W1 = 4;  //Time in seconds
w = -W1/2:Dw:W1/2;
XW=[zeros(1,length(w)/2) 1 zeros(1,length(w/2))];
XW = XW';

//Inverse Continuous-time Fourier Transform
t = -0.01:1/length(w):0.01;
size(XW)
size(t)
xt =(1/(2*%pi))*XW *exp(sqrt(-1)*w'.*t).*exp(sqrt(-1).*t)*Dw;
xt = real(xt);
figure
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot(t,xt);
xlabel('                                     t time in Seconds');
title('Inverse Continuous Time Fourier Transform x(t)')