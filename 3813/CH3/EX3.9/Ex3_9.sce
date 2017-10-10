//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_9
clc;
clear;
L=0.003;//Inductance in mH
Id=64.9;//Current in A
V=162.25;//voltage in V
Vs=150;//Supply voltage in V
f=50;//Frequency in Hz
Rd=2.5;//Resistance in ohm
Eb=-250;//Back emf in V
pf=-0.5;//Powerfactor
Xc=2*%pi*f*L;
Vdia=(Id*(Rd+((3*Xc)/(2*%pi))))+Eb;
a=Vdia/(1.17*Vs);
b=acos(a);
c=(b*180)/%pi;
Alpha=-0.3338;//angle in radian
X=(3*Id*Xc)/(%pi*Vs);
d=acos(Alpha-X);
e=(d*180)/%pi;
u=e-c;
disp(u,"The overlap angle in deg is:")
//Result vary due to error in calculation of overlap angle in the textbook
