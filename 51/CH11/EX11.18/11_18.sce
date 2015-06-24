clc;
clear;
p=60;//psia
T=1000;//degree R
px=12;//psia
k=1.4;
R=53.3;//ft*lb/(lbm*degree R)
pratio=p/px;
//for this value of pratio, Max is calculated as
Max=1.9;
//using this value of Max,  Tx/T0,x is found as
Tratio=0.59;
//T=T0,x=T0,y
Tx=Tratio*T;//degree R
cx=(R*Tx*k)^0.5;//ft/sec
Vx=1.87*cx*(32.2^0.5);//ft/sec
disp(Max,"The Mach number for the flow=")
disp("ft/sec",Vx,"The velocity of the flow=")
