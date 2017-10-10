//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_4
clc;
clear;
V=250;// voltage in V
f=50;//frequency in Hz
R=1.5;// Resistance in ohm
L=30;//inductance in mH
Eb=100;//Back emf in V
Alpha=0.866;//angle 
Vc=0.9*V*Alpha;
Id=(Vc-Eb)/R;
P=Vc*Id*10^(-3);
pf=0.9*Alpha;
disp(pf,"powerfactor is:")
