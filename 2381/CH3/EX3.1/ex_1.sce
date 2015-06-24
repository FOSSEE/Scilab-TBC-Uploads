//Example 1 // Phase shift
clc;
clear;
close;
//given data :
F0=25;// in N
m=1;
f0=F0/m;
K=1*10^3;// in N/m
w0=sqrt(K/m);
b=0.05;// in N-s/m
r=b/(2*m);// in s^-1
A=f0*10^3/sqrt(9*w0^4+(16*r^2*(w0)^2));
disp(A,"The amplitude,A(mm) = ")
p=2*w0;
fi=atand(2*r*p/(w0^2-p^2));
disp("phase shift is "+string(fi)+" degree or "+string(fi*(%pi/180))+" radian")
//phase shift is converted wrong into radians
