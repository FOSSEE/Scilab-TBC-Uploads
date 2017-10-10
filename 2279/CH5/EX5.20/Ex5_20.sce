// Inverse Continuous Time Fourier Transform
// X(jW)= 2*pi, at W=0
clear;
clc;
close;
// CTFT
A =1;    
Dw = 0.005;
W1 = 4;  
w = -W1/2:Dw:W1/2;
for i = 1:length(w)
    if w(i)==0 then
  XW(i) = 2*%pi;
else
    XW(i)=0;
end
end
XW = XW';
subplot(2,1,1)
plot(w,XW)
//Inverse Continuous-time Fourier Transform
t = -3*%pi:%pi/length(w):3*%pi;
xt =(1/(2*%pi))*XW *exp(sqrt(-1)*w'*t)*Dw;
xt = real(1+xt);
subplot(2,1,2)
plot(t,xt);
xlabel('            t Sec');
title('Time domain signal x(t)')
