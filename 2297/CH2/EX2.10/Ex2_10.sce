// Example 2.10 :current equation
clc;
close;
clear;
// given :
format('v',5)
v=100;//volts
r=50;//in ohms
l=0.1;//henry
c=50;//mf
d=poly(0,"d")
p=2*10^5+500*d+d^2;
x=roots(p)
c1=0;//at t=0 i=0
c2=1000/imag(x(1,1));//
disp("it= "+string(c2)+"*e^"+string(real(x(1,1)))+"t*sin"+string(imag(x(1,1)))+"t A")

