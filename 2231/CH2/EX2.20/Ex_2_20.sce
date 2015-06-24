//Example 2_20
clc;
clear;close;

//Given data: 
Vs=230;//V
f=50;//Hz
emf=200;//V
Rint=0.5;//ohm
I=20;//A

//Solution :
Vm=Vs*sqrt(2)/sqrt(3);//V
Vdc=emf+Rint*I;//V
alfa=acosd(Vdc/(3*sqrt(3)/%pi*Vm));//degree
disp(alfa,"Firing angle(degree)");
Pout=emf*I+I^2*Rint;//W
Is=sqrt(I^2*120/180);//A
cos_theta=Pout/(sqrt(3)*Vs*Is);//power factor
disp(cos_theta,"Input power factor(lagging)");
