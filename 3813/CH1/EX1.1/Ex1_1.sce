//Electric Drives  concepts and application by V.Subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_1
clc;
clear;
V=500;// voltage v
N1=900;// speed in rpm
Ia1=45;//armature current in A
Ia2=21;//armature current in A
R=8;// resistance in ohm
Ra=1;//armature resistance in ohm
Eb1=V-(Ia1*Ra);
Eb2=V-(9*Ia2);
N2=N1*(Eb2/Eb1);
disp(N2,'New speed in rpm is :');
