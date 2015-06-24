clc;
//page no 82
//prob 3.3
// given signal is x(t)= unit impulse d(t) 
//it is defined as d(t) = 1 for t=0
//therefore 
x=1;
y=fft(x);
disp(y,'fourier transform of x(t)=');