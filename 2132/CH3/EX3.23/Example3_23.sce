//Example 3.23
clc;
clear;
close;
format('v',7);
//Given data :
ABbar=sqrt(2)*4;//meter
xbar=ABbar/2;//meter
A=ABbar*1;//m^2
w=9.81;//kN/m^2
PH=w*A*xbar;//kN
disp(PH,"Horizontal component of resultant Pressure in kN : ");
hbar=2/3*ABbar;//meter
disp("Position of horizontal component of pressure is "+string(hbar)+" meter below free water surface.");
PV=w*[%pi*4^2/4-4*4/2]*1;//kN
disp(PV,"Verticalal component of resultant Pressure in kN : ");
