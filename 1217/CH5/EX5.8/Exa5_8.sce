// Exa 5.8
clc;
clear;
close;
// given data 
fo=800;// in Hz
d=60/100;//unitless
T=1/fo;//in Sec
TC=0.6*T;//in Sec
TD=T-TC;//in Sec
C=0.01;//in uF
C2=10;//in uF
RB=TD/(0.69*C*10^-6);//in ohm
RA=(TC-0.69*RB*C*10^-6)/(0.69*C*10^-6);//in ohm
disp(RA/1000,"Value of RA in Kohm is ; ")
disp(RB/1000,"Value of RB in Kohm is ; ")
disp(C,"Value of C in uF is ; ");
disp(C2,"Value of C2 in uF is ; ");