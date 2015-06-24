//Exa 2.12
clc;
clear;
close;
format('v',6);

//Given Data
Q=82;//KJ
p1=4;//bar
m=1;//Kg
V1=0.21;//m^3
T2=127;//degree Centigrade
R=300;//Nm/KgK
W=0;//because V is constant.
disp(W,"Work done in KJ : ");
//Q-W=deltaU
deltaU=Q-W;//KJ
disp(deltaU,"Change in internal energy in KJ  : ");
//p1*V1=m*R*T1
T1=p1*10^5*V1/m/R;//kelvin
T1=T1-273;//degree centigrade
delta_t=T2-T1;//degree centigrade
Cv=deltaU/delta_t;//KJ/KgK
disp(Cv,"Specific Heat in KJ/KgK  : ");
