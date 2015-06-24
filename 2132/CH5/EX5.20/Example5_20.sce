//Example 5.20
clc;
clear;
close;
format('v',6);
//Given data :
D1=20/100;//meter
D2=15/100;//meter
A1=%pi/4*D1^2;//m^2
A2=%pi/4*D2^2;//m^2
v1=2;//m/s
v2=A1*v1/A2;//m/s
disp(v2,"Velocity at another section in m/s : ");
FlowRate=A1*v1;//m^3/s
FlowRate=FlowRate*1000;//litres/s
disp(FlowRate,"Flow Rate in litres/sec : ");
//Answer of velocity in the book is not accurate.
