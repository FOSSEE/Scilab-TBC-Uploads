//Example 1_28
clc;
clear;close;

//Given data: 
V=32;//V
Eta=0.63;
Ip=10*10^-6;//A
Vv=3.5;//V
Iv=10*10^-3;//A
Vf=0.5;//V
f=50;//Hz
tau=50*10^-3;//s
T=1/f//s
Vp=Eta*V+Vf;//V
C=0.4*10^-6;//F//assumed
disp(C*10^6,"Suitable value of C in micro F ")
//V-Ip*R>Vp
R_upper=(V-Vp)/Ip;//ohm
//V-Iv*R<Vv
R_lower=(V-Vv)/Iv;//ohm
disp("Value of R should be lie between "+string(R_lower)+" ohm to "+string(R_upper)+" ohm")
R=T/C/log(1/(1-Eta));//ohm
disp(R,"Suitale value of R in ohm ");
R4=tau/C;//ohm
disp(R4,"Suitale value of R4 in ohm ");
R3=10^4/Eta/V;//ohm
disp(R3,"Suitale value of R3 in ohm ");
//Answer for R4 is wrong in the book
