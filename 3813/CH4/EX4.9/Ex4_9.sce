//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_9
clc;
clear;
V1=500;// voltage in V
V2=450;// voltage in V
Vs=420;// voltage in V
V=400;// voltage in V
I=60;//Current in A
R=1.5;// Resistance in ohm
R1=5;// Resistance in ohm
Eb=20;//Back emf in V
f=50;//frequency in Hz
Vl=V2+Eb;		
A=acos(Vl/(1.35*Vs));
Alpha1=(A*180)/%pi;
Eb1=V2-(I*R);
disp(Eb1,"The back emf in V is:")
V3=-V2-(I*R);
Vc=-V2+Eb;
A1=acos(Vc/(1.35*Vs));
Alpha2=(A1*180)/%pi;
disp(Alpha2,"The firing angle1 in deg is:")
Eb2=-V-(I*R);
Vc1=-V+Eb+(R1*I);
A2=acos(Vc1/(1.35*Vs));
Alpha3=(A2*180)/%pi;
disp(Alpha3,"The firing angle2 in deg is:")
