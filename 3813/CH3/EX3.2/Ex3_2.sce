//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_2
clc;
clear;
Vs=400;//Supply voltage in V
Id=80.88;//Current in A
Rd=2;//Resistance in ohm
Eb=-150;//Back emf in V
Vdia=Id*Rd+Eb;
a=acos((Vdia*%pi)/(2*sqrt(2)*Vs));
Alpha=(a*180)/%pi;
disp(Alpha,"The firing angle in degree is:")
