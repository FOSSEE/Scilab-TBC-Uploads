//Example 5.22
clc;
clear;
close;
format('v',5);
//Given data :
rd=0.75;//relative density
d1=0.3;//meter
d2=0.1;//meter
Q=50/1000;//m^3/sec
A1=%pi/4*d1^2;//m^2
A2=%pi/4*d2^2;//m^2
v1=Q/A1;//m/s
v2=A1*v1/A2;//m/s
p1=200;//kN/m^2
p2=100;//kN/m^2
w=9.81;//kN/m^3
g=9.81;//gravity constant
Z1=0;//meter
Z2=Z1+p1/w+v1^2/2/g-p2/w-v2^2/2/g;//meter
disp(Z2,"Z in meter : ");
