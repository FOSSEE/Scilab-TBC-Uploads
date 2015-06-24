//Example 5.21
clc;
clear;
close;
format('v',4);
//Given data :
rd=0.75;//relative density
D=12.5/100;//meter
p=1;//bar
p=p*1.02;//kg/cm^2
p=p*9.81*10^4/1000;//kPa
g=9.81;//gravity constant
w=g*rd;//N/m^3
pH=p/w;//meter
Z=2.5;//meter
Et=20;//Nm
v=sqrt((Et-p/w-Z)*2*g);//m/s
A=%pi/4*D^2;//m^2
Q=A*v;//m^3/sec
Q=A*v*1000;//litres/sec
disp(Q,"Flow Rate of oil in litres/sec : ");
