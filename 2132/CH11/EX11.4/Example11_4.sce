//Example 11.4
clc;
clear;
close;
format('v',7);
//Given data :
Cd=0.62;//constant
H=0.12;//meter
L=0.3;//meter
g=9.81;//constant
Q=2/3*Cd*sqrt(2*g)*L*H^(3/2);//m^3/s
disp(Q,"Discharge in m^3/sec : ");
