
//example 4.8
//page 174
clc; funcprot(0);
//initialisation of variable
d1=2/100;
d2=6/100;
pi=3.14;
g=9.81;
V2=40;
effi=0.8;
V1=V2*d1^2/d2^2;
A1=pi*d1^2/4;//area
A2=pi*d2^2/4;//area
Gamma=9810;
P1=-50;
z2=100;
hs=V2^2/2/g-V1^2/2/g-P1/Gamma+z2+30;
Q=A1*V1;
P=Gamma*Q*hs;
Pi=P/effi;
disp(Pi/100,"Power input (kW):");
clear
