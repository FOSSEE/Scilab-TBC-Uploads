//Example 24 // frequency
clc;
clear;
close;
m1=1;//a.m.u
m2=35;//a.m.u
mu1=((m1*m2)/(m1+m2));//a.m.u
m3=2;//
mu2=((m3*m2)/(m3+m2));//a.m.u
n1=8.99*10^13;//cycle/sec
n2=(sqrt(mu1/mu2))*n1;//c/s
disp(n2,"frequecy of vibrations is ,(c/s)=")
