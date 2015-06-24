//Page Number: 1.14
//Example 1.10
clc;
//Given,
//Signal is x(t)= e^|-a|t * u(t)
//unity function u(t)=1 for 0 to infinity 
//therefore
x=1;
//We assume 'infinity' value as 10 and the value of 'a' is 1
t= 0:1:10;
a1=1;// For a >0
a2=-1; //For a <0
z=((%e)^(a2*t) * x)+((%e)^(a1*t) * x);
y=fft(z);
disp(y,'fourier transform of x(t)=');
