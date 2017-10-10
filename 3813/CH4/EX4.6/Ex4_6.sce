//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_6
clc;
clear;
V=500;// voltage in V
Vs=250;// voltage in V
I=181;//Current in A
N=1500;//Speed in rpm
R=0.1;// Resistance in ohm
f=50;//frequency in Hz
Eb=Vs-(I*R);
Eb1=Eb/3;
A1=acos(Vs/(1.35*V));
Alpha1=(A1*180)/%pi;
Ia2=I/9;
V2=Eb1+(Ia2*R);
A2=acos(V2/(1.35*V));
Alpha2=(A2*180)/%pi;
Vl=Vs/1.35;
A3=acos(V2/(1.35*Vl));
Alpha3=(A3*180)/%pi;
disp(Alpha3,"The firing angle in deg is:")
