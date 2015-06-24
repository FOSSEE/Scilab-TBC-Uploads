//Example 3.12
clc;
clear;
close;
format('v',6);
//Given data :
a=3;//meter
b=4;//meter(altitude)
S=1.2;//specific gravity
theta=30;//degree
d=2.5;//meter
g=9.81;//gravity
AG=b/3;//meter
xbar=d+AG*sind(theta);//meter
A=1/2*a*b;//meter^2
w=S*g*1000;//in N/m^3
p=w*A*xbar/10^3;//in kN
disp(p,"Total pressure in kN : ");
IG=a*b^3/36;//in m^4
h_bar=IG/A/xbar*(sind(theta))^2+xbar;//in meter
disp("Depth of centre of pressure is "+string(h_bar)+" meter.");
