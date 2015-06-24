// Example 6.1:refractive index
clc;
clear;
close;
format('v',5)
l=0.47;//in db
nf=10^((l/-10));//
x=poly(0,"x");
p=1+-2.22*x+x^2;//
y=roots(p);//
disp(y(1,1),"refractive index is")
