//Example 1_29
clc;
clear;close;

//Given data: 
f=2*1000;//Hz
Vdc=10;//V
Eta=0.6;
Ip=5*10^-3;//A
Vf=0.5;//V//assumed
Vp=Eta*Vdc+Vf;//V
//Vdc-Ip*R>Vp
R_upper=(Vdc-Vp)/Ip;//ohm
disp("Value of R should be less than "+string(R_upper)+" ohm")
C=0.5*10^-6;//F//assumed
disp(C*10^6,"Let value of C in micro F ")
T=1/f//s
R=T/C/log(1/(1-Eta));//ohm
disp("For C=0.5 micro F, calculated value of R "+string(R)+" ohm. But it is not suitable");
C=1*10^-6;//F//assumed
disp(C*10^6,"Let value of C in micro F ")
R=T/C/log(1/(1-Eta));//ohm
disp("For C=1 micro F, calculated value of R "+string(R)+" ohm. It is suitable");
