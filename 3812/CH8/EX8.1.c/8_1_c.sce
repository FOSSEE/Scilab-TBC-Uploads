//determine the nyquist rate
//example 8_1<c>
clc;
clear all;
//x(t)=1+cos(200*pi*t)+sin(400*pi*t)
wq=200;
wp=400;
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
