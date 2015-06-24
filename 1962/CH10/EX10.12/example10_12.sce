
//example 10.12
//page 409
clc; funcprot(0);
//initialisation of variable
b=12;//width
y1=6;//depth
g=32.2;
delz=0.75//head loss
A=6*12;//area
y2=6-1-0.75;//depth
//using continuity
k=1.41;//V2/V1
//solving head loss
V1=((2*g*delz)/(k^2-1))^0.5;
Q=A*V1;
disp(Q,"flow rate(cfs)=");
clear
