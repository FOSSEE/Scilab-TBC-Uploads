//Example 6.9
clc;
clear;
close;
format('v',5);
//Given data :
g=9.81;//constant
do=2.5/100;//meter
H=75/100;//meter
x=30/100;//meter
y=3.2/100;//meter
Qactual=1.186*10^-3;//Cumec
ao=%pi/4*do^2;//m^2
Qth=ao*sqrt(2*g*H);//cumec
Cd=Qactual/Qth;//Coeff. ofdischarge
disp(Cd,"Coefficient of discharge : ");
Cv=sqrt(x^2)/sqrt(4*H*y);//Coefficient of velocity
format('v',7);
disp(Cv,"Coefficient of velocity : ");
format('v',6);
Cc=Cd/Cv;//coeff. of contraction
disp(Cc,"Coefficient of contraction : ");
Cr_dash=(1/Cv^2-1);//coeff. of resistance
disp(Cr_dash,"Coefficient. of Resistance");
//Answers in the book are not accurate.
