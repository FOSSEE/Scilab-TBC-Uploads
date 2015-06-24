//Example 6.1
clc;
clear;
close;
format('v',5);
//Given data :
Do=25;//mm
Dc=20;//mm
H=85;//mm
x=335;//mm
y=350;//mm
a=%pi/4*Do^2;//m^2
ac=%pi/4*Dc^2;//m^2
Cc=ac/a;
disp(Cc,"Coefficient of contraction : ");
Cv=sqrt(x^2/4/H/y);
disp(Cv,"Coefficient of velocity : ");
Cd=Cc*Cv;
disp(Cd,"Coefficient of discharge : ");
Cr=(1/Cv^2-1);
disp(Cr,"Coefficient of resistance : ");
