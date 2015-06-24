//Example 6.2
clc;
clear;
close;
format('v',5);
//Given data :
Do=0.125;//m
H=10.5;//mm
Q=6500;//litres/minute
Q=Q/60/1000;//cumec
x=6;//m
y=1;//m
g=9.81;//gravity constant
a=%pi/4*Do^2;//m^2
Qth=a*sqrt(2*g*H);//cumec
Cd=Q/Qth;//
disp(Cd,"Coefficient of discharge : ");
Cv=sqrt(x^2/4/H/y);
format('v',6);
disp(Cv,"Coefficient of velocity : ");
Cc=Cd/Cv;
format('v',5);
disp(Cc,"Coefficient of contraction : ");
Cr=(1/Cv^2-1);
format('v',6);
disp(Cr,"Coefficient of resistance : ");
