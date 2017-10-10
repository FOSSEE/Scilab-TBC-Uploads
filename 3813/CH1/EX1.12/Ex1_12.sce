//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_12
clc;
clear;
Sf=0.04;//Full load slip in %
I=5;//Current in A
Tst=(I)^2*Sf;
x=((2/I)*100)^(1/2);
T=(2/I)^2*(I)^2*Sf;
disp(T,"Torque in Nm is:")
