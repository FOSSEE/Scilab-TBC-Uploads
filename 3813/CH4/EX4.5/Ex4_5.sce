//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_5
clc;
clear;
N=1800;//Speed in rpm
I=60;//Current in A
V=400;// voltage in V
E=185;//Back emf in V
N2=900;//Speed in rpm
R=0.5;// Resistance in ohm
Vs=V/2.34;
Vl=V/1.35;
Vi=V-(I*R);
V=E+(I*R);
a=acos(V/(2.34*Vs));
Alpha=(a*180)/%pi;
disp(Alpha,"The firing angle in deg is:")
