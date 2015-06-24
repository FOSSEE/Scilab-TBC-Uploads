//Part A Chapter 4 Example 7
clc;
clear;
close;
M=16;//molecular weight

p1=101.3;//KPa
p2=600;//MPa
T1=20+273;//K
n=1.3;//constant
Cp=1.7;//KJ/KgK
UGC=8.3143*10^3;//Universal Gas constant
R=UGC/M/1000;//KJ/KgK
Cv=Cp-R;//KJ/KgK
Gamma=Cp/Cv;//constant
T2=T1*(p2/p1)^((n-1)/n);//K
W=R*(T2-T1)/(n-1);//
Q=W*(Gamma-n)/(Gamma-1);//Kj/Kg
disp("Heat = "+string(Q)+" KJ");
