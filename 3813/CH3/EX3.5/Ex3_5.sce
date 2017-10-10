//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_5
clc;
clear;
f=50;//Frequency in Hz
Rd=2.5;//Resistance in ohm
Lc=0.005;//Inductance in mH
Vs=220;//Supply voltage in V
pf=1;//Powerfactor
pf1=0.866;//Powerfactor
Xc=2*%pi*f*Lc;
Z=Rd+((2*Xc)/%pi);
Vdia=0.9*Vs*pf;
Id=Vdia/Z;
disp(Id,"The average value of load current in A is:")
Vd=Id*Rd;
Vdc=Vdia-Vd;
a=(1-((Vdc*2)/Vdia));
b=acos(a);
u=(b*180)/%pi;
disp(u,"The overlap angle u in deg is:")
Vdia1=0.9*Vs*pf1;
Id1=Vdia1/Z;
Vd1=Id1*Rd;
Vdc1=Vdia1-Vd1;
V=pf1-((Vdc1*2)/Vs);
c=acos(V);
d=(c*180)/%pi;
u1=d-30;
disp(u1,"The overlap angle u1 in deg is:")
//Result vary due to error in calculation of overlap angle in the textbook
