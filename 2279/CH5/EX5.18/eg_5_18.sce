// Inverse Continuous Time Fourier Transform
// X(jW)= 1, from -T1 to T1
clear;
clc;
close;
// CTFT
A =1;    
Dw = 0.005;
W1 = 4;  
w = -W1/2:Dw:W1/2;
for i = 1:length(w)
  XW(i) = A;
end
XW = XW';
//Inverse Continuous-time Fourier Transform
t = -3*%pi:%pi/length(w):3*%pi;
xt =(1/(2*%pi))*XW *exp(sqrt(-1)*w'*t)*Dw;
xt = real(xt);
figure
plot(t,xt);
xlabel('            t Sec');
title('Time domain signal x(t)')
