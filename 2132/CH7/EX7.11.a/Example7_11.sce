////Example 7.11 at page 246
clc;
clear;
close;
format('v',7);
//Given data :
g=9.81;//gravity constanty
D1=400/1000;//meter
D2=300/1000;//meter
D3=200/1000;//meter
v1=3;//m/s
v2=2;//m/s
A1=%pi/4*D1^2;//m^2
A2=%pi/4*D2^2;//m^2
A3=%pi/4*D3^2;//m^2
Q1=A1*v1;//cumec
disp(Q1,"Discharge in pipe 1 in cumec : ");
Q2=A2*v2;//cumec
Q3=Q1-Q2;//cumec
v3=Q3/A3;//m/s
disp(v3,"Velocity of water in 200mm pipe in m/s : ");
