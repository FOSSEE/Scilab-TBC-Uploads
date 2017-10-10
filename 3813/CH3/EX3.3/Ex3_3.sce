//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_3
clc;
clear;
Id=80.88;//Current in A
Rd=2;//Resistance in ohm
Xc=0.628;//Reactance in ohm
Vs=400;//Supply voltage in V
Eb=150;//Back emf in V
Z=Id*(Rd+(Xc/%pi));
a=acos((Z-Eb)/(0.9*Vs));
Alpha=(a*180)/%pi;
c=cos(Alpha);
d=-c/11;
b=(Id*Xc*2)/(%pi*Vs);
X=d-b;
e=acos(X);
f=(e*180)/%pi;
u=f-Alpha;
disp(u,"The overlap angle in deg is:")
