//determine the nyquist rate
//8.1(b)
clc;
clear all;
//x(t)=sin2(200*pi*t)
//x(t)=0.5-0.5cos(400*pi*t)
wp=400;
F1=wp/2;
Fs=2*F1;
disp('Nyquist Rate=');
disp(Fs);
