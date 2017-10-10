//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_10
clc;
clear;
V=500;// voltage in V
I=15;//Current in A
t=0.6;//time in sec
f=80;//frequency in Hz
Vav=V*t;
Vi=V-Vav;
Ton=t/f;
L=Vi*(Ton/I);
disp(L,"The inductance in Henry is:")
