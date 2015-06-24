//Example 3.11
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//gravity
D=4;//meter
xbar=(10+7)/2;//meter
A=%pi*D^2/4;//meter^2
w=g*1000;//in N/m^3
p=w*A*xbar/10^6;//in MN
disp(p,"Total pressure in MN : ");
BC=3;//meter
AB=4;//mete
sin_theta=BC/AB;
IG=%pi*D^4/64;//in m^4
h_bar=IG/A/xbar*sin_theta^2+xbar;//in meter
disp("Position of centre of pressure is "+string(h_bar)+" meter.");
