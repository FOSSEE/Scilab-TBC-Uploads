//Exa 9.7
clc;
clear;
close;
//Given data :
Vs=11;//kV
n=5;//no. of uniits
K=0.1;//shunt to mutual capacitance ratio
V5=Vs;//kV
V1=V5/(1+10*K+15*K^2+7*K^3+K^4);//kV
V2=V1*(1+K);//kV
V3=V1*(1+3*K+K^2);//kV
V4=V1*(1+6*K+5*K^2+K^3);//kV
V=V1+V2+V3+V4+V5;//kV
disp(V,"Maximum safe working voltage(kV)");
