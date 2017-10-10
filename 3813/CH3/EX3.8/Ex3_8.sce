//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_8
clc;
clear;
Rd=2.5;//Resistance in ohm
V=250;// voltage in V
f=50;//Frequency in Hz
Vs=150;//Supply voltage in V
pf=-0.5;//Powerfactor
Eb=-250;//Back emf in V
Xc=0.636;//Reactance in ohm
Vdia=1.17*Vs*pf;
Id=(Vdia-Eb)/Rd;
disp(Id,"load current in A is:")
Ith=(Id*Xc)/2;	
disp(Ith,"Average value of load current in A is:")
Irms=sqrt(3)*Ith;
disp(Irms,"Rms value of load current in A is:")
//Result vary due to error in calculation of current in the textbook
