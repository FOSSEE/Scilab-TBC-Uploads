//Example 3.18
clc;
clear;
close;
format('v',7);
//Given data :
D=1.5;//meter
BE=2;//meter
AD=0.75;//meter
CE=AD;//meter
BC=BE-AD;//meter
FG=CE+BC/2;//meter
xbar=FG;//meter
w=9.81;//kN/m^2
A=%pi*D^2/4;//m^2
AB=D;//meter
sin_theta=BC/AB;
P=w*A*xbar;//kN
disp(P,"Total Pressure in kN : ");
IG=(%pi/64*D^4);//in m^4
h_bar=IG/A/xbar*sin_theta^2+xbar;//in meter
disp(h_bar,"Position of centre of pressure in meter : ");
