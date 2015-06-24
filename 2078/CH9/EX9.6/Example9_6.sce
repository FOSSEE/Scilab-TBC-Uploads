//Exa 9.6
clc;
clear;
close;
//Given data :
Vs=12;//kV
n=4;//no. of uniits
K=0.1;//shunt to mutual capacitance ratio
V4=Vs;//kV
V1=V4/(1+6*K+5*K^2+K^3);//kV
V2=V1*(1+K);//kV
V3=V1*(1+3*K+K^2);//kV
V=V1+V2+V3+V4;//kV
disp(V,"Maximum safe working voltage(kV)");
Strinf_eff=V/n/V4;
disp(Strinf_eff*100,"Percentage String Efficiency(%)");
