//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_11
clc;
clear;
Sf1=0.04;//Full load slip in %
x=(8*3)^(1/2);
Tst=(x)^2*Sf1;
S=Sf1/2;
T=(8)^2*S;
disp(T,"Torque in Nm is:")
