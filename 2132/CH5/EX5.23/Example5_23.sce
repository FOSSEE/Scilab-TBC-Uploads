//Example 5.23
clc;
clear;
close;
format('v',6);
//Given data :
D1=300/1000;//meter
D2=150/1000;//meter
Q=50/1000;//m^3/sec
A1=%pi/4*D1^2;//m^2
A2=%pi/4*D2^2;//m^2
delpBYw=3;//p1/w-p2/w=3;//m
v1BYv2=A2/A1;
Z1=0;//meter
Z2=0;//meter
g=9.81;//gravity constant
//HeadLoss=1/8*v^2/2/g
//Z1+p1/w+v1^2/2/g=Z2+p2/w+v2^2/2/g+HeadLoss
v2=sqrt((Z1-Z2+delpBYw)/(1/2/g-v1BYv2^2/2/g+1/8/2/g));//m/s
Q=A2*v2;//m^3/s
Q=Q*1000;//litres/sec
disp(Q,"Discharge in pipe in litres/sec : ");
