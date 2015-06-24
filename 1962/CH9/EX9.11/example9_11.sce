
//example 9.11
//page 3337
clc; funcprot(0);
//initialisation of variable
Q=2;
nu=1.007*10^-56;
d2=0.3;
d1=0.5;
d3=0.15;
L1=500;
L2=200;
L3=300;
pi=3.14;
g=9.81;
f=0.018//(solved using iteration from moody's chart)
A1=pi*d1^2/4;
A2=pi*d2^2/4;
A3=pi*d3^2/4;
//assumption
q1=0.5;
q2=sqroot(L1*q1^2/d1^5*d2^5/L2);
q3=sqroot(L1*q1^2/d1^5*d3^5/L3);
Q1=2*q1/(q1+q2+q3);
hf=f*L1*Q1^2/A1^2/2/g/d1;
disp(hf,"head loss (m)=");
clear
