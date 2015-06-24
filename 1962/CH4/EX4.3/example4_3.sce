
//example 4.3
//page 162
clc; funcprot(0);
// Initialization of Variable
h1=3;//height
h2=4;//height
b=0.5;//breadth
Cd=0.65
g=9.81;
Q=Cd*2/3*b*sqroot(2*g)*(h2^1.5-h1^1.5);
disp(Q,"flow rate(m^3/s)=");
clear
