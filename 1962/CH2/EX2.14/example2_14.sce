//example 2.14
//page 85
clc; funcprot(0);
//initialisation of variable
pi=3.14;
g=9.81;
W=0.4;//weight
k=pi*10^2/(pi*(14^2-10^2));//k=x/y
F=W*g;
//on equating F and substitung x=k*y in equation x+y=6.37/100
y=6.37/100/(1+k);
x=k*y;
disp(0.08-x,"bottom of solid cylinder above ground(m):");
clear
