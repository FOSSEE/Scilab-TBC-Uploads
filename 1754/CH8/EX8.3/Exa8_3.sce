//Exa 8.3
clc;
clear;
close;
//Given data
format('v',9);
L=100;//in mH
L=L*10^-3;//in H
C1=0.1;//in uF
C1=C1*10^-6;//in F
f=100;//in kHz
f=f*10^3;//in Hz
//Formula : f=1/(2*%pi*sqrt(L*C))
C=1/(4*%pi^2*f^2*L);//in F
//Formula : C=C1*C2/(C1+C2)
C2=C*C1/(C1-C);
disp(C2,"C2 in micro farad : ");
//Note : Answer in the book is wrong.