//Example 5.23
clc;clear;close;
format('v',7);
Z=1.5+%i*2.5;//ohm
V=11;//kV
P=20;//MW
pf=0.8;//power factor
theta=acosd(pf);
I=P*1000/sqrt(3)/V/pf;//
I=I*expm(%i*-theta*%pi/180);//A
Vdrop=I*Z;//V
Vboost=Vdrop;//V
disp(Vboost,"Voltage boost needed at station A(V)");
