//Example 4.2
clc;
clear;
close;
format('v',9);
//Given data :
w=1000;//kg/m^3
h=50/1000;//m
p=w*h;//kg/m^2
p=p*9.81;//N/m^2 or Pa
disp(p,"Pressure Intensity in Pa : ");
alfa=30;//degree
h=50;//mm
l=h/sind(alfa);//mm
disp(l,"Reading in tube in mm : ");
