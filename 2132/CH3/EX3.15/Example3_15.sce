//Example 3.15
clc;
clear;
close;
format('v',7);
//Given data :
l=4;//meter
b=2;//meter
h=1.8;//meter
w=9.81;//kN/m^2
xbar=6-2//meter
A=l*b;//m^2
P=w*A*xbar;//kN
IG=(2*l^3)/12;//in m^4
h_bar=IG/A/xbar+xbar;//in meter
// As P acts at h_bar-xbar : 
F=P*((h_bar-xbar)-(b-h))/h;//kN
disp(F,"Horizontal Force in kN : ");
