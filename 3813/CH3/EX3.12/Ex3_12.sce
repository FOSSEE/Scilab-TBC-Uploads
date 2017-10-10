//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_12
clc;
clear;
Vs=400;//Supply voltage in V
Id=9.317;//Current in A
pf=0.2588;//Powerfactor
Vth=sqrt(2)*Vs;
Ia=sqrt(2/3)*Id;
Ith=Ia/sqrt(2);
Imax=Ith/pf;
disp(Imax,"The max current in A is:")
