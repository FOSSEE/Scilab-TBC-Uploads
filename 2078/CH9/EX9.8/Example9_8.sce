//Exa 9.8
clc;
clear;
close;
//Given data :
V2=15;//kV
V3=21;//kV
n=4;//no. of uniits
//V3/V2=(1+3*K+K^2)/(1+K)
//K^2*V2+K*(V3+3*V2)-V2+V3=0;
p=[V2 -V3+3*V2 V2-V3];
K=roots(p);
K=K(2);//Taking +ve value
V1=V2/(1+K);//kV
V4=(1+6*K+5*K^2+K^3)*V1;//kV
V=V1+V2+V3+V4;//kV
VL=sqrt(3)*V;//kV
disp(VL,"Voltage between conductors(kV)");
Strinf_eff=V/n/V4;
disp(Strinf_eff*100,"Percentage String Efficiency(%)");
