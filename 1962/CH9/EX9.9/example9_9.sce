
//example 9.9
//page 329
clc; funcprot(0);
//initialisation of variable
nu=1.007*10^-6;
g=9.81;
hf=100;
pi=3.14;
//on solving V1 and V2 in terms of V3 and
// iterate for f1 and f2
//we get 
f1=0.019;
f2=0.022;
V3=sqroot(2*g*hf/(8.4*f1+268.85*f2+4.85));
Q3=V3*pi*0.08^2/4;
disp(Q3,"flow in pipe 3(m^3/s)=");
clear
