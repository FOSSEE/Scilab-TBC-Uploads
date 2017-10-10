//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_10
clc;
clear;
Sf=0.04;//Full load slip in %
Ist=1;//Starting current in A
If1=Ist/8;
T=(8)^2*Sf;
disp(T,"Direct on line starting torque in Nm is:")
S=T/3;
disp(S,"By Star/delta starter:")
