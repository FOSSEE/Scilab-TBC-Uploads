// Exa 5.9
clc;
clear;
close;
// given data 
fo=700;// in Hz
d=50/100;//unitless
T=1/fo;//in Sec
TC=0.5*T;//in Sec
TD=T-TC;//in Sec
C=0.1;//in uF
RB=TD/(0.69*C*10^-6);//in ohm
RA=TC/(0.69*C*10^-6);//in ohm
disp(RA/1000,"Value of RA in Kohm is ; ")
disp(RB/1000,"Value of RB in Kohm is ; ")
disp(TC*1000,"We have TC=TD in mSEC is :")