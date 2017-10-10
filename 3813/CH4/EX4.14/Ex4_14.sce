//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_14
clc;
clear;
V=440;// voltage in V
R1=0.07;// Resistance in ohm
R2=0.05;// Resistance in ohm
X=0.2;//Reactance in ohm
N=1420;//Speed in rpm
Xm=20;//Reactance in ohm
S1=80;//slip in rpm
S2=500;//slip in rpm
Ra=((S2/S1)*R2)-R2;
R=2*Ra;
Ra1=4*R2;
T=(Ra1*2)/R;
disp(T,"The time ratio is:")
