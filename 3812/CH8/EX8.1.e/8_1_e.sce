//determine the nyquist rate
//example 8_1<e>
clc;
clear all;
//x(t)=cos3(200*pi*t)
//cos3(t)=1/4[3cos(t)+cos(3t)]
//cos3(t)=3/4[cos(200)+1/4cos(600)]
wq=600;
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
