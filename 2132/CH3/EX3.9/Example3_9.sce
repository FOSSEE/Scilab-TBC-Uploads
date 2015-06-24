//Example 3.9
clc;
clear;
close;
format('v',9);
//Given data :
g=9.81;//gravity
GH=4;//meter
IJ=4;//meter
IC=2;//meter
GC=3;//meter
AG=(10-4)/2;//meter
BH=(10-4)/2;//meter
EI=AG*IC/GC;//meter
JF=AG*IC/GC;//meter
EF=EI+IJ+JF;//meter
A=(8+4)/2*2;//in m^2
a=4;//meter
b=8;//meter
d=2;//meter
xbar=(2*a+b)/(a+b)*d/3;//in meter
w=g*1000;//in N/m^3
p_gate=w*A*xbar/10^3;//in kN
disp(p_gate,"Total pressure in kN : ");
IG=(a^2+4*a*b+b^2)/(a+b)*d^3/36;//in m^3
h_bar=IG/A/xbar+xbar;//in meter
disp("Depth of centre of pressure is "+string(h_bar)+" meter.");
