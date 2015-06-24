//Exa 1.11
clc;
clear;
close;
//Given data
format('v',6);
C1min=10;//in pF
C2max=50;//in pF
L=5;//in mH
L=L*10^-3;//in H
//Formula : CT=C1*C2/(C1+C2)
//Minimum
C1=10;//in pF
C2=10;//in pF
CTmin=C1*C2/(C1+C2);//in pF
CTmin=CTmin*10^-12;//in F
//Maximum
C1=50;//in pF
C2=50;//in pF
CTmax=C1*C2/(C1+C2);//in pF
CTmax=CTmax*10^-12;//in F
//Formula : f=1/(2*%pi*sqrt(L*C))
//maximum :
fmax=1/(2*%pi*sqrt(L*CTmin));
//minimum :
fmin=1/(2*%pi*sqrt(L*CTmax));
disp("The frequency of tuning circuit ranges from "+string(fmin/10^6)+"MHz to "+string(fmax/10^6)+"MHz.");
//Note : Answer in the book is wrong.