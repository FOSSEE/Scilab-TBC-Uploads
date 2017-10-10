//determine the nyquist rate
//example 8_1<d>
clc;
clear all;
//x(t)=cos(150*pi*t)sin(100*pi*t)
//x(t)=0.5sin(250*pi*t)*0.5*sin(50*pi*t)
wq=50;
wp=250;
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
