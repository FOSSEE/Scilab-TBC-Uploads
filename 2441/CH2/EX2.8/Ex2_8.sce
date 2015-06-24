//exa 2.8
clc;clear;close;
format('v',8);
//dC1/dP1=0.2*P1+22;//Rs./MWh
//dC2/dP2=0.15*P2+30;//Rs./MWh
B22=0;B12=0;//Because Loss is independent wrt P2
P1=100;//MW
PL=15;//MW
B11=PL/P1^2;//MW^-1
L1=1/[1-0.003*P1];//Penalty Factor plant 1
L2=1;//Penalty Factor of plant 2
lambda=60;
//lambda=dC1/dP1*L1=dC2/dP2*L2
//dC1/dP1*L1=dC2/dP2*L2
P2=((0.2*P1+22)*L1-30)/0.15;//MW
P=P1+P2-B11*P1^2;//MW//Total Load
disp(P1,"Required generation at plant1(MW)");
disp(P2,"Required generation at plant2(MW)");
disp(P,"Total Load(MW)");
