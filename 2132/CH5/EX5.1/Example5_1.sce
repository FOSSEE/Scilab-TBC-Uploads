//Example 5.1
clc;
clear;
close;
format('v',9);
//Given data :
m=2000;//litre or kg(1litre water =1kg)
M=m/60;//kg/s
p=4.5;//bar
p=p*10^5;//N/m^2
g=9.81;//constant
w=g*1000;//N/m^3
H=p/w;//m
Power=M*g*H/1000;//kW
disp(Power,"Power required in kW : ");
