//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_8
clc;
clear;
V=600;// voltage in V
R=0.16;// Resistance in ohm
Ia=210;//Current in A
N=600;//Speed in rpm
n=10;//no of unit
Eb=V-(Ia*R);
Td=((Eb*Ia)/(2*%pi*n));
W=(2*%pi*N)/60;
A=Td/(W)^2;
disp(A,"The constant A is:")
