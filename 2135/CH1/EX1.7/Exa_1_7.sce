//Exa 1.7
clc;
clear;
close;
format('v',7);

//Given Data :
rho=1000;//Kg/m^3
d=0.3;//m
C=1.5;//m/s
h=4.5;//m
FlowRate=2000;//Kg/min
d2=15/100;//diameter of discharging line in meter
t=15;//min
r=3;//m
WaterDischarge=rho*%pi/4*(d/2)^2*C*t*60;//Kg
WaterReceived=FlowRate*t;//Kg
NetWaterReceived=WaterReceived-WaterDischarge;//Kg
disp(NetWaterReceived,"Mass change in tank in Kg : ");
//m=rho*A*h
h=NetWaterReceived/rho/(%pi/4*r^2);//m
disp(h,"Water level in meter : ");
