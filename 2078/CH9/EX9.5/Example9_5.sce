//Exa 9.5
clc;
clear;
close;
//Given data :
Vs=17.5;//kV
n=3;//no. of uniits
K=1/8;//shunt to mutual capacitance ratio
V3=Vs;//kV
V1=V3/(1+3*K+K^2);//kV
V2=V1*(1+K);//kV
V=V1+V2+V3;//kV
//Strinf_eff=V/n/V3;
disp(V,"Maximum safe working voltage(kV)");
