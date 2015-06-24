//Exa 9.1
clc;
clear;
close;
//Given data :
C1=1;//
C=6;
K=C1/C;
V2byV1=(1+K);
V3byV1=(1+3*K+K^2);
V4byV1=(1+6*K+5*K^2+K^3);
//I5=I4+i4;
//omega*C*V5=omega*C*V4+omega*C1*(V1+V2+V3+V4)
V5byV1=1+10*K+15*K^2+7*K^3+K^4
VbyV1=1+V2byV1+V3byV1+V4byV1+V5byV1;
V1byV=1/VbyV1;
disp("Voltage across the first unit is "+string(V1byV*100)+" % of V");
disp("Voltage across the seconf unit is "+string(V2byV1*V1byV*100)+" % of V");
disp("Voltage across the third unit is "+string(V3byV1*V1byV*100)+" % of V");
disp("Voltage across the fourth unit is "+string(V4byV1*V1byV*100)+" % of V");
disp("Voltage across the bottom most unit is "+string(V5byV1*V1byV*100)+" % of V");
n=5;//no. of unit
Strinf_eff=1/n/(V5byV1*V1byV);//%
disp(Strinf_eff*100,"String Efficiency(%)");
