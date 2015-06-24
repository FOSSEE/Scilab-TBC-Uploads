//Example 2.28: Error
clc;
clear;
close;
//given data :
La=90*10^-6;// in micro-H
Ra=0.09;// in ohm
LsbyRs=La/Ra;
I=50;// in A
Ia=5;// in A
f=50;// in Hz
w=2*%pi*f;
Rs=Ra/9;
Ls=LsbyRs*Rs*10^6;
disp(Rs,"Shunt resistance,Rs(ohm) = ")
disp(Ls,"Inductance,Ls(micro-H) = ")
Ls1=0;// shunt is non-inductive 
Ia1=(Rs*I)/sqrt((Ra+Rs)^2+(w^2*La^2));
disp(Ia1,"Current,Ia1(A) = ")
Error=((Ia-Ia1)/Ia)*100;
disp(Error,"Error,(%)(low) = ")
