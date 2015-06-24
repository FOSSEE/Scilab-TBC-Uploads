clear;
clc;
close;
disp("given y[n]=x[n]+x[n-1]  this can be converted to high pass filter by      multiplying with (-1)^n")
disp("then y[n]=x[n]-x[n-1] taking fourier transform");
disp("H(w)=1-e^-j*w");
w=-3:0.01:3;
Hw=1-%e^(-%i*w);
subplot(2,1,1)
plot(w,abs(Hw));
xtitle('|H(w)|','w')
subplot(2,1,2)
plot(w(1:find(w==0)-1),phasemag(Hw(1:find(w==0)-1))*%pi/180)
a=gca();
a.y_location="origin";
plot(w(find(w==0)+1:$),phasemag(Hw(find(w==0)+1:$))*%pi/180)
xtitle('phase(H(w))','w')
