//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_4
clc;
clear;
Vs=200;//Supply voltage in V
Rd=12.5;//Resistance in ohm
Xc=0.5;//Reactance in ohm
pf=0.5;//Powerfactor
Vdia=0.9*Vs*pf;
Id=Vdia/(Rd+(Xc/%pi));
disp(Id,"The average value of dc current in A is:")
Vd=Id*Rd;
disp(Vd,"The average value of converter voltage in V is:")
Vc=Vdia-Vd;
X=pf-((Vc*2)/Vs);
c=acos(X);
d=(c*180)/%pi;
u=d-60;
disp(u,"The overlap angle in deg is:")
//Result vary due to error in calculation of overlap angle in the textbook
