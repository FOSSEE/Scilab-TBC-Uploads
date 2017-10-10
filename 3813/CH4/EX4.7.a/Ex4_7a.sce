//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_7a
clc;
clear;
V=300;// voltage in V
Vt=363.25;// voltage in V
f=60;//frequency in Hz
Rd=0.02;// Resistance in ohm
La=0.002;//inductance in H
Id=500;//Current in A
N=1500;//Speed in rpm
Eb=Vt-(Id*Rd);
A=acos(Vt/(1.35*V));
Alpha=(A*180)/%pi;
disp(Alpha,"The firing angle in deg is:")
