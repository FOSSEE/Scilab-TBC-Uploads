//Exa 9.4
clc;
clear;
close;
//Given data :
Vs=20;//kV
n=3;//no. of uniits
K=0.1;//shunt to mutual capacitance ratio
V3=Vs;//kV
V1=V3/(1+3*K+K^2);//kV
disp(V1,"Voltage across top most unit(kV)");
V2=V1*(1+K);//kV
disp(V2,"Voltage across middle unit(kV)");
V=V1+V2+V3;//kV
Strinf_eff=V/n/V3;
disp(Strinf_eff*100,"Percentage String Efficiency(%)");
