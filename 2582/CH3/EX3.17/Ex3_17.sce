//Ex 3.17
clc;clear;close;
format('v',6);
R=50;//kohm(R1=R2=R3=R)
C=60;//pF(C1=C2=C3=C)
f=1/(2*%pi*R*1000*C*10^-12*sqrt(6));//Hz
disp(f/1000,"Frequency of oscillation(kHz)");
