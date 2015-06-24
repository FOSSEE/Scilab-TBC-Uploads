//Page Number: 1.13
//Example 1.9
clc;
//Given,
//Signal is x(t)= e^(-at) * u(t)
//unity function u(t)=1 for 0 to infinity 
//therefore
x=1;
//We assume 'infinity' value as 10 and the value of 'a' is 1
t= 0:1:10;
a=1;// a >0
z=((%e)^(-a*t) * x);
y=fft(z);
disp(y,'fourier transform of x(t)=');
