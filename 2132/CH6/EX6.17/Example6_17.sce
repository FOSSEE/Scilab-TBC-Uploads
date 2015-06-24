//Example 6.17
clc;
clear;
close;
format('v',5);
//Given data :
g=9.81;//constant
d=1.2;//meter
do=50/1000;//meter
H=3;//meter
Cd=0.6;//Coefficient of discharge
ao=%pi/4*do^2;//m^2
A=%pi/4*d^2;//m^2
t=2*A*sqrt(H)/Cd/ao/sqrt(2*g);//sec
disp("Time taken for emptying the tank is "+string(floor(t/60))+" minute "+string((t/60-floor(t/60))*60)+" seconds.");
