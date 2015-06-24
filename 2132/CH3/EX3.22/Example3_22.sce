//Example 3.22
clc;
clear;
close;
format('v',7);
//Given data :
A=2*1;//m^2
xbar=2+2/2;//meter
w=9.81;//kN/m^2
PH=w*A*xbar;//kN
disp(PH,"Horizontal component of resultant Pressure in kN : ");
PV=w*[2*2+2*2-%pi*2^2/4]*1;//kN
disp(PV,"Verticalal component of resultant Pressure in kN : ");
P=sqrt(PH^2+PV^2);//kN
disp(P,"Resultant pressure in kN : ");
theta=atand(PV/PH);//degree
disp(theta,"Direction of resultant pressure in degree : ");
