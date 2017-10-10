//Example 8_2<c>
//determine the nyquist rate of x(t)=sinc(200*pi*t)+sinc2(200*pi*t)
//here,sinc(400t)=0.5cos(400t)/400t+
clc;
clear all;
wq=400;
wp=200;
wf=0;
if wp>=wq then
wf=wp;
else
wf=wq;
end
F1=wf/2;
Fs=2*F1;
disp('Nyquist Rate=');
disp(Fs);
