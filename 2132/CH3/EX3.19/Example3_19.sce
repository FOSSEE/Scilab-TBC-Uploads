//Example 3.19
clc;
clear;
close;
format('v',7);
//Given data :
b=3;//meter
a=3;//meter
S_oil=0.8;//specific gravity of oil
w=9.81*S_oil;//kN/m^2
xbar=1/3*b;//meter
A=1/2*a*b;//m^2
P=w*A*xbar;//kN
disp(P,"Total Pressure in kN : ");
IG=(a*b^3)/36;//in m^4
h_bar=IG/A/xbar+xbar;//in meter
disp(h_bar,"Centre of pressure in meter : ");
