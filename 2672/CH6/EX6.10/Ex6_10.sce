//Example 6_10
clc;
clear;
close;
format('v',4);
Rm=20;//ohm(meter resistance)
Rs=5;//kohm(series resistance)
Im=1;///mA
Idc=2*Im/%pi;//mA
RL=Rm+Rs*1000;//ohm
Vm=Idc/1000*%pi*RL/2;///V
v0_max=2*sqrt(2)*Vm;//V
disp(v0_max,"Full scale reading(V) : ");
