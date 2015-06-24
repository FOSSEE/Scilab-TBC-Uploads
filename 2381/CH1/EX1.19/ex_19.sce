//Example 19 // Frequency
clc;
clear;
close;
//given data :
m1=10;// in g
m2=90;// in g
K=10^3;// in N/m
mu=m1*m2*10^-3/(m1+m2);
n=round(sqrt(K/mu)/(2*%pi));
disp(n," The frequency,n(oscillations/sec) = ")
x1=0;//
x2=10;//cm
xb=((m1*x1+m2*x2)/(m1+m2));//cm
mo=(m1*10^-3)*(xb*10^-2)^2+(m2*10^-3)*(1*10^-2)^2;//
disp(mo,"moment of inertia is ,(kg-m^2)=")
