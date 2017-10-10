//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_7b
clc;
clear;
V=300;// voltage in V
Vt=363.25;// voltage in V
f=60;//frequency in Hz
Rd=0.02;// Resistance in ohm
La=0.001;//inductance in H
Id=500;//Current in A
N=1500;//Speed in rpm
Xc=2*%pi*f*La;
Z=Rd+((3*Xc)/%pi);
Eb=Vt-(Id*Z);
disp(Eb,"The back emf in V is:")
