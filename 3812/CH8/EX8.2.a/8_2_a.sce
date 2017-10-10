//Example 8_2 <a>
//determine the nyquist rate of x(t)=sinc(200*pi*t)
//sinc(t)=cos(t)/t
//cos3(t)=3/4[cos(200)+1/4cos(600)]
clc;
clear all;
wp=200;
F1=wp/2;
Fs=2*F1;
disp('Nyquist Rate=');
disp(Fs);
