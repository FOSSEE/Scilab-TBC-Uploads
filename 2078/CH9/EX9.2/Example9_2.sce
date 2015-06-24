//Exa 9.2
clc;
clear;
close;
//Given data :
C1=1;//
C=10;
K=C1/C;
V2byV1=(1+K);
V3byV1=(1+3*K+K^2);
V4byV1=(1+6*K+5*K^2+K^3);
V5byV1=1+10*K+15*K^2+7*K^3+K^4
//I6=I5+i5;
//omega*C*V6=omega*C*V5+omega*C1*(V1+V2+V3+V4+V5)
V6byV1=V5byV1+K*(1+V2byV1+V3byV1+V4byV1+V5byV1);
VbyV1=1+V2byV1+V3byV1+V4byV1+V5byV1+V6byV1;
V1byV=1/VbyV1;
disp("Voltage across the first unit is "+string(V1byV*100)+" % of V");
disp("Voltage across the seconf unit is "+string(V2byV1*V1byV*100)+" % of V");
disp("Voltage across the third unit is "+string(V3byV1*V1byV*100)+" % of V");
disp("Voltage across the fourth unit is "+string(V4byV1*V1byV*100)+" % of V");
disp("Voltage across the fifth unit is "+string(V5byV1*V1byV*100)+" % of V");
disp("Voltage across the sixth unit is "+string(V6byV1*V1byV*100)+" % of V");
n=6;//no. of unit
Strinf_eff=1/n/(V6byV1*V1byV);//%
disp(Strinf_eff*100,"String Efficiency(%)");
