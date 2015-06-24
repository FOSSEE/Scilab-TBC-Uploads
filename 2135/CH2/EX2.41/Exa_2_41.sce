//Exa 2.41
clc;
clear;
close;
format('v',7);

//Given Data : 
A1C1=0.7;//m^3/s
p1=85;//KPa
p2=650;//KPa
v1=0.35;//m^3/Kg
v2=0.1;//m^3/Kg
d1=10/100;//m
d2=6.25/100;//m

mdot=A1C1/v1;//Kg/s
p2v2SUBp1v1=mdot*(p2*v2-p1*v1);//KJ/s
disp(p2v2SUBp1v1,"Change in flow work in KJ/s : ");
disp(mdot,"Mass flow rate in Kg/s : ");
C1=A1C1/(%pi/4*d1^2);//m/s
A2C2=mdot*v2;//m^3/s
C2=A2C2/(%pi/4*d2^2);//m/s
C2subC1=C2-C1;//m/s
disp(C2subC1,"Velocity change in m/s : ");
