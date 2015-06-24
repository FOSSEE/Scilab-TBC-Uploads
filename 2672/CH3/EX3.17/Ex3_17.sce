//Example 3_17
clc;
clear;
close;
format('v',5);
//given data :
L=100;//mH
f=50;//Hz
XL=2*%pi*f*L/1000;///ohm
//VL should be equal to 1/2*V
//equalting : VL=I*XL & 1/2*V=1/2*I*Z=1/2*I*sqrt(R^2+XL^2)
R=sqrt(3*XL^2);//ohm
disp(R,"Value of R(ohm)");
