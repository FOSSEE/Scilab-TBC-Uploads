//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_6
clc;
clear;
Vs=220;//Supply voltage in V
f=50;//Frequency in Hz
Eb=-200;//Back emf in V
Rd=3;//Resistance in ohm
Vdc=200;// voltage in V
Xc=0.314;//Reactance in ohm
L=0.001;//Inductance in mH
pf=-0.5;//Powerfactor
Vdia=0.9*Vs*pf;
Id=(Vdia-Eb)/(Rd+((2*Xc)/%pi));
Vd=Id*Rd+Eb;
a=-pf+((Vd*2)/Vdc);
b=acos(a);
c=(b*180)/%pi;
u=c-120;
disp(u,"The overlap angle in deg is:")
//Result vary due to error in calculation of overlap angle in the textbook