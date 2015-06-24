//Example 3.8
clc;
clear;
close;
format('v',6);
//Given data :
l=3;//in meter
b=2;//in meter
p=2*10^6;//in Pa
g=9.81;//gravity constant
w=g*1000;//in N/m^3
h=p/w;//in meter
xbar=h-1.5;//in meter
A=l*b;//in m^2
p_gate=w*A*xbar/10^6;//in MN
disp(p_gate,"Total pressure on the gate in MN : ");
IG=b*l^3/12;//in m^3
h_bar=IG/A/xbar+xbar;//in meter
disp("Position of centre of pressure is "+string(h_bar-xbar)+" meter below the centroid of gate.");
