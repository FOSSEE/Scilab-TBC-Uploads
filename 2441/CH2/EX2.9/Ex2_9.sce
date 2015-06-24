//exa 2.9
clc;clear;close;
format('v',6);
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
//dC1/dP1=dC2/dP2; neglecting transmission loss
clear('P2');//for recalculation
//0.2*P1-0.15*P2-8=0;///eqn(1)
//P1=0.75*P2+40;//P1+P2-B11*P1^2-P=0;//eqn(2)
//1.75*P2-B11*P1^2=P-40
Eqn=[-B11 1.75 40-P];
P2=roots(Eqn);
P2=P2(2);//MW//neglecting higher value
P1=0.75*P2+40;//MW
dC1=integrate('0.2*P+22','P',100,P1);//Rs.//Additional Cost plant1
dC2=integrate('0.15*P+30','P',200,P2);//Rs.//Decreased Cost  plant2
dC=dC1+dC2;//Rs./hour//Net change in cost
disp(dC,"Taking transmission loss in account, Net saving per hour in fuel cost(Rs,/hour)");
//Note : Values calculated in the book are slightly wrong because of accuracy in calculation as compared to scilab accuracy.
