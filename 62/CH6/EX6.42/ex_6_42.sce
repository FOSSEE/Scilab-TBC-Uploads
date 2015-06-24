close;
clc;
clear;
n=-10:10;
h=[zeros(1,find(n==0)-1) 2 2 -2 -2 zeros(1,length(n)-find(n==0)-3)];
plot2d3(n,h)
plot(n,h,'r.')
title("impulse response h[n]")
disp("taking DTFT H(w)=sin(w/2)+sin(3*w/2)")
w=-3:0.01:3;
Hw=h*exp(-%i*n'*w);
figure
subplot(2,1,1)
plot(w,abs(Hw)/4)
xtitle('|H(w)|','w')
subplot(2,1,2)
plot(w(1:find(w==0)-1),phasemag(Hw(1:find(w==0)-1))*%pi/180)
a=gca();
a.y_location="origin";
xtitle('phase(H(w))','w')
plot(w(find(w==0)+1:$),phasemag(Hw(find(w==0)+1:$))*%pi/180)
