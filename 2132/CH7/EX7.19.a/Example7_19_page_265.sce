////Example 7.19 at page no. 265
clc;
clear;
close;
format('v',9);
//Given data :
g=9.81;//gravity constant
l=10000;//meter(length of pipe line)
D=0.2;//meter(Diameter of pipe)
p=60*10^5;//N/m^2
f=0.007;//coefficient of friction
w=g*1000;//N/m^3
H=p/w;//meter
hf=H/3;//meter(friction head loss is 1/3rd)
v=sqrt(hf*2*g*D/4/f/l);//m/s
P=w*%pi*D^2/4*v*(H-hf)/1000;//kW
disp(P,"Maximum power(kW)");
