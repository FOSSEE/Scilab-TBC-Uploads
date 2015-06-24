//Example 6.6
clc;
clear;
close;
format('v',7);
//Given data :
g=9.81;//constant
a=9*10^-4;//m^2
H=3;//meter
x=2.5;//meter
y=54/100;//meter
Qactual=250*10^-3/60;//Cumec
Qth=a*sqrt(2*g*H);//Cumec
Cd=Qactual/Qth;//coeff. of discharge
disp(Cd,"Coefficient of discharge : ");
Cv=sqrt(x^2)/sqrt(4*H*y);//velocity
disp(Cv,"Coefficient of velocity : ");
Cc=Cd/Cv;//coeff. of contraction
disp(Cc,"Coefficient of contraction : ");
//Answer in the book are not accurate.
