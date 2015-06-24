//Exa 11.17
clc;
clear;
close;
//Given data :
l=10;//km
Vs=10;//kV
f=50;//Hz
C=0.3;//micro F/km(between any two core)
C2=l*C;//micro F(between any two core)
C_N=2*C2;//micro F
Vp=Vs*1000/sqrt(3);//Volt
Ic=2*%pi*f*Vp*C_N*10^-6;//A
kVA=3*Vp*Ic/1000;//kVAR
disp(kVA,"kVA taken by the cable(kVAR)");
