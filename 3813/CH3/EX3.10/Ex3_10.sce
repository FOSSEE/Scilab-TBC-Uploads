//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_10
clc;	
clear;
Vs=400;//Supply voltage in V
f=50;//Frequency in Hz
Rd=15;//Resistance in ohm
pf=0.2588;//Powerfactor
Vdia=1.35*Vs*pf;
disp(Vdia,"Average value of load voltage in V is:")
Id=Vdia/Rd;
disp(Id,"Average value of load current in A is:")
P=Vdia*Id;	
disp(P,"Power dissipation in W is:")
