//Example 3.21
clc;
clear;
close;
format('v',7);
//Given data :
r=2;//meter
l=4;//meter
A=r*l;//m^2
xbar=2+r/2;//meter
w=9.81;//kN/m^2
PH=w*A*xbar;//kN
disp(PH,"Horizontal component of resulting Pressure in kN : ");
PV=2*r*l*w+%pi*r^2/4*l*w;//kN
disp(PV,"Verticalal component of resulting Pressure in kN : ");
IG=(l*r^3)/12;//in m^4
h_bar=IG/A/xbar+xbar;//in meter
disp(h_bar,"Position of centre of horizontal component of pressure in meter : ");
x=(2*r+%pi*r^2/4*(4*r/3/%pi))/(2*r+%pi*r^2/4);//meter
P=sqrt(PH^2+PV^2);//kN
disp(P,"Resultant pressure in kN : ");
theta=atand(PV/PH);//degree
disp(theta,"Direction of resultant pressure in degree : ");
