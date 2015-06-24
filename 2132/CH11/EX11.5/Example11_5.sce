//Example 11.5
clc;
clear;
close;
format('v',8);
//Given data :
Cd=0.66;//constant
H=0.15;//meter
L=0.40;//meter
g=9.81;//constant
Q=2/3*Cd*sqrt(2*g)*L*H^(3/2);//m^3/s
disp(Q,"Discharge in m^3/sec : ");
disp(Q*10^3,"Discharge in litres/sec : ");
