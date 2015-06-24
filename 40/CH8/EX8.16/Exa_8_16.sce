//signal interpolation using FFT
xn=[0 1 0 -1];
XDFT=dft(xn,-1)
ZT=[0 -2*%i 0 zeros(1:27) 0 2*%i];
xn1=dft(ZT,1);
t=0:1/length(xn1):1-(1/length(xn1));
a=gca();
a.x_location="origin";
plot2d(t,xn1);
xlabel('time t');
ylabel('Amplitude');
xtitle('Interpolated Sinusoid:4 samples over one period');