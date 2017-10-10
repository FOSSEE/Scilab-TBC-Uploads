//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_7
clc;
clear;
Id=50;//Current in A
Vs=220;//Supply voltage in V
Vdio=257.4;// voltage in V
f=50;//Frequency in Hz
L=0.0015;//Inductance in mH
pf=0.866;//Powerfactor 
Xc=2*%pi*f*L;
Vdia=1.17*Vs*pf;
Vd=Vdia-((3*Id*Xc)/(2*%pi));
Vc=Vdia-Vd;
a=pf-((Vc*2)/Vdio);
b=acos(a);
c=(b*180)/%pi;
u=c-30;
disp(u,"the overlap angle in deg is:")
