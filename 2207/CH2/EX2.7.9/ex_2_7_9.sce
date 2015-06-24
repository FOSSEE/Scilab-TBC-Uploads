//Example 2.7.9;//series resistance and power dissipation
clc;
clear;
close;
//given data :
format('v',7)
vr=12;//in volts
t=50;//in micro seconds
d=0.2;//duty cycle
pd=5;//power dissipation in watts
Ig=poly(0,"Ig");
p=-5+1.5*Ig+8*Ig^2;//
x=roots(p);//
rg=(vr-(1.5+8*x(2,1)))/(x(2,1));//resistance in ohms
pg=d*pd;//average power loss in watts
disp(round(rg),"resistance Rg in ohm is")
disp(pg,"average power loss in Watt is")
