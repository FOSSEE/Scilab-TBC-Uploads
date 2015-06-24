//Ex 1.6
clc;
clear;
close;
format('v',5);
VBE=0.7;//V
Beta=120;//unitless
VCC=10;//V
R=5.6;//kohm
//KCL at node x : IREF=IC1+I1;//as Beta>>1
//KCL at node y : I1=IC2+IB3;//as Beta>>1
IREF=(VCC-VBE)/R;//mA
//as IREF=2*IC+IB3=IC*(2+1/Beta)=2*IC;//as Beta>>1
IC=IREF/2;//mA
Iout=IC;//mA
disp(Iout,"Output current(mA)");
