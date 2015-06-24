//Exa 9.3
clc;
clear;
close;
//Given data :
V=66;//kV
//Part(i)
n=5;//no. of uniits
K=1/5;//shunt to mutual capacitance ratio
V1=V/(5+20*K+21*K^2+8*K^3+K^4);//kV
V5=V1*(1+10*K+15*K^2+7*K^3+K^4);//kV
Strinf_eff=V/n/V5;
disp(Strinf_eff*100,"Part(i) Percentage String Efficiency(%)");
//Part(ii)
n=5;//no. of uniits
K=1/6;//shunt to mutual capacitance ratio
V1=V/(5+20*K+21*K^2+8*K^3+K^4);//kV
V5=V1*(1+10*K+15*K^2+7*K^3+K^4);//kV
Strinf_eff=V/n/V5;
disp(Strinf_eff*100,"Part(ii) Percentage String Efficiency(%)");
