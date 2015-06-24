//Example 6.8
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//constant
d=1.5;//meter
h=1;//meter
Volume=%pi/4*d^2*h;//m^3
time=25;//sec
Qactual=Volume/time;//Cumec
H=10;//meter
do=10/100;//meter
x=4.3;//meter
y=0.5;//meter
ao=%pi/4*do^2;//m^2
Qth=ao*sqrt(2*g*H);//cumec
Cd=Qactual/Qth;//Coeff. ofdischarge
disp(Cd,"Coefficient of discharge : ");
format('v',5);
Cv=sqrt(x^2)/sqrt(4*H*y);//Coefficient of velocity
disp(Cv,"Coefficient of velocity : ");
Cc=Cd/Cv;//coeff. of contraction
disp(Cc,"Coefficient of contraction : ");
Cr_dash=(1/Cv^2-1);//coeff. of resistance
disp(Cr_dash,"Coefficient. of Resistance");
