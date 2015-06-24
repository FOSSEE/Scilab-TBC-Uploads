//Ex 1.9
clc;
clear;
close;
format('v',5);
Beta=100;//unitless
VBE=0.715;//V
R=5.6;//kohm
RC=1;//kohm
VCC=10;//V
VCB1=0;//V(Q1 will act as diode)
IREF=(VCC-VBE)/R;//mA
//KCL at node x : IREF=IC1+2*IB;
//KCL at node y : I1=IC2+IB3;//as Beta>>1
IREF=(VCC-VBE)/R;//mA
//as IREF=2*IC1/Beta+IC1
IC1=IREF/(1+2/Beta);//mA
IC2=IC1;//mA
IC3=IC1;//mA
disp(IC1,"Collector current in each transistor, IC1=IC2=IC3 in mA");
IRC=IC1+IC2+IC3;//mA
disp(IRC,"Current through RC(mA)");
