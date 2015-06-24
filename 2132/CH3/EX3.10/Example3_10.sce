//Example 3.10
clc;
clear;
close;
format('v',9);
//Given data :
g=9.81;//gravity
xbar=8;//meter
D=4;//meter
A=%pi*D^2/4;//meter^2
w=g*1000;//in N/m^3
p=w*A*xbar/10^3;//in kN
disp(p,"Total pressure in kN : ");
IG=%pi*D^4/64;//in m^4
h_bar=IG/A/xbar+xbar;//in meter
disp("Depth of centre of pressure is "+string(h_bar)+" meter.");
//Answer of total pressure is wrong in the book.
