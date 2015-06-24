//Example 9.1: 
clc;
clear;
close;
//given data :
Vm=200;// in V
theta=30;//firing angle in degree
vdc=((Vm/%pi)*(1+cosd(theta)));//in V
format('v',5)
disp(round(vdc),"average value of voltage is ,(V)=")
