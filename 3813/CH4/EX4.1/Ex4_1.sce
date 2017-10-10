//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex4_1
clc;
clear;
Eb=50;// voltage in V
V=120;// voltage in V
f=50;//frequency in Hz
R=10;// Resistance in ohm
a=asin(Eb/(sqrt(2)*V));
Alpha=(a*180)/%pi;
pf=0.9556;
Iavg=(1/(2*%pi*R))*((2*sqrt(2)*V*pf)-(Eb*(%pi-(2*Alpha))));
disp(Iavg,"Current Iavg in A is:")
