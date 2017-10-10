//Example 8_10 <a>
//determine the Nyquest rate
//x(t)=10cos(2000)cos(8000)
//x(t)=5cos(6000)+5cos(10000)
clc;
clear all;
wq=10000;
wp=6000;
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

