
//example 4.4
//page 164
clc; funcprot(0);
// Initialization of Variable
Cd=0.6;
h1=2;//height
h2=2.2;//height
b=1;//breadth
g=9.81;
Q2=Cd*2/3*b*sqroot(2*g)*(h2^1.5-h1^1.5);

A=1*0.3;//area
H=2.2;
Q1=Cd*sqroot(2*g*H)*A;
Q=Q1+Q2;
disp(Q,"flow rate(m^3/s)=");
clear
