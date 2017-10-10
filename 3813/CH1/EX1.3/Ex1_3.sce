//Electric drives concepts and application by V.Subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_3
clc;
clear;
V=250;//supply voltage V
Ia1=40;//Armature current in A
R1=0.6;//Resistance in ohm
N1=2.828;//speed in rpm
N2=2;//speed in rpm
Ia2=((Ia1)^2/N1)^(1/2);
Eb1=V-(Ia1*R1);
Eb=(Ia1/Ia2)*N2;
Eb2=Eb1/Eb;
R2=(V-Eb2)/Ia2;
disp(R2,'External resistance required in ohm:')
