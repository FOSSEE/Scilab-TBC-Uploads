//determine the nyquist rate
//8.1(a)
clc;
clear all;
//x(t)=sin(200*pi*t)
wp=200;
F1=wp/2;
Fs=2*F1;
disp('Nyquist Rate=');
disp(Fs);
