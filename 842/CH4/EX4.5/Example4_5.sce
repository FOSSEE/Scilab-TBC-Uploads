//clear//
//Example 4.5
// Inverse Continuous Time Fourier Transform
// X(jW)= 1, from -T1 to T1
clear;
clc;
close;
// CTFT
A =1;    //Amplitude
Dw = 0.005;
W1 = 4;  //Time in seconds
w = -W1/2:Dw:W1/2;
for i = 1:length(w)
  XW(i) = A;
end
XW = XW';
//
//Inverse Continuous-time Fourier Transform
t = -%pi:%pi/length(w):%pi;
xt =(1/(2*%pi))*XW *exp(sqrt(-1)*w'*t)*Dw;
xt = real(xt);
figure
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot(t,xt);
xlabel('                                     t time in Seconds');
title('Inverse Continuous Time Fourier Transform x(t)')
