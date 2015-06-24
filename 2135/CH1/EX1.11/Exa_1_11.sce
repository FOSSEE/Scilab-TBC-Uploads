//Exa 1.11
clc;
clear;
close;
format('v',7);

//Given Data :
h1=5.1/100;//m
h2=10/100;//m
Patm=75.5;//mm of Hg
Patm=Patm*1.01325/76*10^5;//bar
sg_k=0.8;
sg_Hg=13.6;
rho_w=1000;//Kg/m^3
g=9.81;//gravity constant
P_kerosine=sg_k*rho_w*g*h1;//N/m^2
P_Hg=sg_Hg*rho_w*g*h2;//N/m^2
Pabs=P_Hg+Patm-P_kerosine;//Nm^2
disp(Pabs/1000,"Absolute pressure of gas in KPa : ");
