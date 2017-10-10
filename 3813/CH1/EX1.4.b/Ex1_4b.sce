//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex1_4b
clc;
clear;
V=440;//voltage in V
K=3.153;
Ia=80;// Current in A
Rs=2;//Resistance in ohm
Rsh=1.5;//Resistance in ohm
R1=0.55;//Resistance in ohm
Alpha=(Rs/Rsh);
Vo=(V/Alpha);
No=(Vo/K);
N=((60*No)/(2*%pi));
disp(N,'No load speed in rpm is:')
V2=((V/Rs)-Ia)/((1/Rs)+(1/Rsh));
E2=V2-(Ia*R1);
N2=N*(E2/Vo);
disp(N2,'Full load speed in rpm is:')
