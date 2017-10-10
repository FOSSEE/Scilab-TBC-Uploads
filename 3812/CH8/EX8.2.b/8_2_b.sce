//Example 8_2<b>
//determine the nyquist rate of x(t)=sinc2(200*pi*t)
//sinc(400t)=0.5cos(400t)/400t
clc;
clear all;
wp=400;
F1=wp/2;
Fs=2*F1;
disp('Nyquist Rate=');
disp(Fs);
