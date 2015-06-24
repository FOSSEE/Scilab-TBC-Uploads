// Exa 5.10
clc;
clear;
close;
// given data 
fo=1;// in KHz
d=40/100;//unitless
T=1/fo;//in Sec
TC=0.4*T;//in mSec
TD=T-TC;//in mSec
C=0.1;//in uF
RB=TD*10^-3/(0.69*C*10^-6);//in ohm
RA=TC*10^-3/(0.69*C*10^-6);//in ohm
disp(RA/1000,"Value of RA in Kohm is ; ")
disp(RB/1000,"Value of RB in Kohm is ; ")
disp(TC,"We have TC in mSEC is :")
disp(TD,"We have TD in mSEC is :")