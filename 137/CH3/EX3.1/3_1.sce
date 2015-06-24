clc;
//page no 75
//prob 3.1
// given signal is x(t)= e^(-at) * u(t)
//unity function u(t)=1 for 0 to infinity 
//therefore
x=1;
//here we consider 'infinity' value as 10 and the value of 'a' is 1
t= 0:1:10;
a=1;// a >0
z=((%e)^(-a*t) * x);
y=fft(z);
disp(y,'fourier transform of x(t)=');