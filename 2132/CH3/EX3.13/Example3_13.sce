//Example 3.13
clc;
clear;
close;
format('v',6);
//Given data :
a=8;//meter
b=6;//meter
h=3;//meter
CD=2;//meter
theta=30;//degree
A=(a+b)/2*h;//meter^2
AB=(a+2*b)/(a+b)*h/3;//meter
x1bar=AB;//meter
BC=AB*sind(theta);//meter
BD=BC+CD;//meter
xbar=BD;//meter
g=9.81;//gravity
w=g*1000;//in N/m^3
p=w*A*xbar/10^3;//in kN
disp(p,"Total pressure in kN : ");
IG=(a^2+b^2+4*a*b)/(a+b)*h^3/36;//in m^4
h_bar=IG/A/xbar*(sind(theta))^2+xbar;//in meter
disp("Depth of centre of pressure is "+string(h_bar)+" meter.");
