//Ex 1.16
clc;clear;close;
format('v',5);
Beta=120;//unitless
VBE=0.7;//V
VCC=10;//V
R=5.6;//kohm
//IREF=IC1+I1;as Beta>>1
//I1=IC2+IB3;as Beta>>1
IREF=(VCC-VBE)/R;//mA
//IREF=IC*(2+1/Beta) or IREF=2*IC;as Beta>>1
IC=IREF/2;//mA
Iout=IC;//mA
disp(Iout,"Iout for the circuit is(mA) : ");
