//Exa 2.15
clc;
clear;
close;
format('v',7);

//Given Data : 
m=1;//Kg
V1=0.3;//m^3
p=3.2*100;//Kpa
p1=3.2*100;//Kpa
p2=3.2*100;//Kpa
V2=2*V1;//m^3
Cp=1.003;//KJ/KgK
R=0.2927;//KJ/kgK
//p*V=m*R*T
T1=p1*V1/m/R;//kelvin
T2=p2*V2/m/R;//kelvin
Q=m*Cp*(T2-T1);//KJ
disp(Q,"Heat Added in KJ : ");
W=p*(V2-V1);//KJ
disp(W,"Work done in KJ : ");
disp(round(T1),"Initial temperature of air in kelvin : ");
disp(round(T2),"Final temperature of air in kelvin : ");
