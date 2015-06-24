//Example 11.6
clc;
clear;
close;
format('v',6);
//Given data :
Cd=0.62;//constant
H=200/1000;//meter
theta=90;//degree
g=9.81;//constant
Q=8/15*Cd*sqrt(2*g)*tand(theta/2)*H^(5/2);//m^3/s
Q=Q*1000*60;//litres/minute
disp(Q,"Discharge in litres/minute : ");
